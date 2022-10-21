"""Find, for each qmd file, the outgoing links and their surrounding sentences"""
function get_links() 
  links_out = Dict{String,Vector{Pair{String,String}}}() 
  title_dict = Dict{String,String}()
  for (root, _, files) in walkdir("docs") 
    for file in filter(x -> occursin("qmd",x), files) 
      file[end-3:end] == ".qmd" || error("file $file") # sanity check
      finame = normpath("/$root/$(file[1:end-4])")
      title_dict[finame] = get_title(root,file)
      links_out[finame] = get_links(root,file) 
    end 
  end 

  # ld is the links out; we want the links *in* 
  links_in = Dict{String,Vector{Pair{String,String}}}([ 
    fi => Pair{String,String}[] for fi in keys(links_out)]) 

  for (fi, outlinks) in collect(links_out) 
    for (out_fi, ctx) in outlinks 
      out_fi = occursin("#", out_fi) ? out_fi[1:findlast("#", out_fi).start-1] : out_fi 
      if !haskey(links_in, "$out_fi") println("\tcan't find $out_fi in links_in") 
      else 
        push!(links_in[out_fi], fi=>ctx) 
      end 
    end 
  end 
  filter!(x->!isempty(x[2]),links_in)
  for (k,vs) in collect(links_in) 
    k = k[2:end]
    bl = replace(k, "/"=>"_")
    open("backlinks/$bl.yml", "w") do io
      for (v1,v2) in vs 
        println(io,"- name: $(title_dict[v1])")
        println(io,"  href: $v1.html")
        println(io,"  custom-field: \"...$v2...\"")
      end
    end
    # sanity check
    ndots = count(==('/'),k)
    dotsbl = join(fill("..", ndots), "/") * "/backlinks/$bl.yml"
    occursin(dotsbl, read("$k.qmd", String) ) || error("$k\n",show_listing(ndots,bl))
  end
  return links_in
end
"""Get title of a qmd file"""
function get_title(root,fi)
  txt = read("$root/$fi", String) 
  res = match(r"\-\-\-\ntitle:\s+([^\n]+)", txt)
  return only(res.captures)
end
"""Find for a file all links and surrounding sentences"""
function get_links(root,fi) 
  WIDTH = 80
  txt = read("$root/$fi", String) 
  res = [] 
  for m in eachmatch(r"\[[^\]]+\]\(([^\)]+)\)", txt) 
    mstr = m.captures[1] 
    if all(x->isnothing(match(x, mstr)), [r"http",r".jpeg", r".pdf", r"jpg", r"www."]) && first(m)!='#'
      # if the path is a relative path, add the root 
      mstr = isnothing(match(r"docs", mstr)) ? "$root/$mstr" : mstr 
      # if the link refers to a specific section of a page, cut that off 
      mstr = occursin("#", mstr) ? mstr[1:findlast("#", mstr).start-1] : mstr 
      # if the link points to just a folder, add a index.qmd 
      mstr = occursin(".", last(split(mstr,"/"))) ? mstr : "$(mstr)/index.qmd" 
      # normalize the filepath 
      mstr = normpath("/"*mstr)

      # Sanity checks 
      mstr[end - 3 : end] == ".qmd" || error("mstr $mstr")

      # clean up context
      prestr_ = clean(txt[1:m.offset-1])
      poststr_ = clean(txt[m.offset+length(m.match) : end])
      prestr  = prestr_[max(1, length(prestr_) - WIDTH) : end]
      poststr = poststr_[1 : min(length(poststr_),WIDTH)]
      prestr = prestr[1] == '"' ? '\\'*prestr : prestr
      poststr = poststr[end] == '\\' ? poststr[1:end-1] : poststr
      ctx = prestr * "<b>" * clean(rm_link(m.match)) * "</b>" * poststr 
      
      push!(res,mstr[1:end-4] => ctx) 
    end 
  end 
 return res
end

rm_link(txt) = replace(txt, r"\[(.*?)\]\(.*?\)"=> s"\g<1>")
"""Remove quarto formatting """
function clean(txt)
  tripledashes = split(txt, r"\n?\-\-\-\n")
  if length(tripledashes) == 1 txt = only(tripledashes)
  elseif length(tripledashes) == 3
    if isempty(tripledashes[1]) txt = tripledashes[3]
    elseif isempty(tripledashes[3]) txt = tripledashes[1]
    else error(txt)
    end
  else 
    error("$(length(tripledashes)) $txt")
  end    
  txt = rm_link(txt) # remove hyperlinks
  txt = replace(txt, r"\{\{\<(.*?)\>\}\}" => "")
  txt = replace(txt, r"\s+"=> " ") # all whitespace is space
  txt = replace(txt, r"\\\\"=> "") # remove normal escape characters
  txt = replace(txt, r"{\.callout.*?}" => "")
  txt = replace(txt, r"<div.*?<\/div>" => "")
  txt = replace(txt, r"{style.*?}" => "")
  txt = replace(txt, r":::" => "")
  txt = replace(txt, r"\""=> "\\\"") # escape "
  return txt
end

function show_listing(ndots::Int,name::String)
  d = join(fill("..", ndots), "/")
  """listing:
  id: backlinks
  type: table
  filter-ui: true
  template: "$d/ejs/custom.ejs"
  contents:
    - $d/backlinks/$name.yml
"""
end

run(`find . -name "backlinks/*.yml" -delete`) # clear old backlinks
l = get_links() |> collect; # add new ones