
"""
TODO ignore X links to Y if X includes Y.
"""
function pipeline()
  links_out, title_dict, include_in = get_links() 
  links_in = get_links_in(links_out)
  # render_deps(links_out)
  render_links(links_in, title_dict)
  render_includes(include_in)
  return links_out, title_dict, links_in, include_in
end

function render_includes(include_in)
  include_out = Dict()
  for (k, vs) in collect(include_in)
    for v in vs 
      if haskey(include_out, v) push!(include_out[v], k)
      else include_out[v] = [k]
      end
    end
  end

  for (k, vs) in collect(include_out)
    kpth = "backlinks/$k"
    mkpath(dirname(kpth))
    open(kpth, "w") do io
      for v in vs 
        v[1]=='/' || error("assumption violated $v")
        println(io, v[2:end])
      end
    end
  end
end

is_qmd(x) = occursin(".qmd",x)
is_md(x) = occursin(".md",x)

"""Find, for each qmd file, the outgoing links and their surrounding sentences"""
function get_links() 
  links_out = Dict{String,Vector{Pair{String,String}}}() 
  include_in = Dict{String,Vector{String}}()
  title_dict = Dict{String,String}()
  for (root, _, files) in walkdir("docs") 
    for file in sort(collect(filter(x -> is_qmd(x) || is_md(x), files)))
      finame = replace(normpath("/$root/$(file[1:end-4])"), r"/index$"=>"")
      if is_qmd(file) 
        if !haskey(links_out, finame)
          links_out[finame] = get_links(root,file) 
        end
        include_in[finame] = get_includes(root, file)
        title_dict[finame] = get_title(root,file)
      else
        file[1] == '_' || error("assumption violated $root: $file")
        links_out[normpath("/$root/$(file[2:end-3])")] = get_links(root, file)
      end
    end 
  end
  # for (k, is) in collect(include_in)
  #   for i in is 
  #     append!(links_out[k], links_out[i])
  #   end
  # end
  return links_out, title_dict, include_in
end 

make_absolute(root, pth) = pth[1] == '/' ? pth : "/$root/$pth"

function get_includes(root, fi) 
  pth = "$root/$fi"
  rgx = r"{{< include (.*?).md >}}"
  return map(first.(eachmatch(rgx, read(pth, String)))) do x 
    basename(x)[1] == '_' || error("included $x")
    return make_absolute(root, x)
  end 
end

function get_links_in(links_out)
  # ld is the links out; we want the links *in* 
  links_in = Dict{String,Vector{Pair{String,String}}}([ 
    fi => Pair{String,String}[] for fi in keys(links_out)])
  println.(keys(links_in))
  for (fi, outlinks) in collect(links_out) 
    for (out_fi, ctx) in outlinks 
      out_fi = occursin("#", out_fi) ? out_fi[1:findlast("#", out_fi).start-1] : out_fi 
      if !haskey(links_in, "$out_fi") println("\tcan't find $out_fi in links_in. \n\t\tfi=$fi\n\nctx $ctx") 
      else 
        push!(links_in[out_fi], fi=>ctx) 
      end 
    end 
  end 
  return links_in 
end 

# function render_deps(links_out)
#   for (k, vs) in collect(links_out)
#     println("k $k\n\tvs $vs")
#   end
# end

function render_links(links_in, title_dict)
  filter!(x->!isempty(x[2]),links_in)

  for (k_,vs) in collect(links_in) 
    k = isfile("$(k_[2:end]).qmd") ? k_ : "$k_/index"

    kpth = "backlinks$k.yml"
    mkpath(dirname(kpth))
    open(kpth, "w") do io
      for (v1,v2) in vs 
        println(io,"- name: $(title_dict[v1])")
        println(io,"  href: $v1.html")
        println(io,"  custom-field: \"...$v2...\"")
      end
    end
    # sanity check
    ndots = count(==('/'),k) - 1
    fname = "$(k[2:end]).qmd"
    isfile(fname) || error("$fname")
    dotsbl = join(fill("..", ndots), "/") * "/" * kpth
    estr = "$k\n $(show_listing(ndots,kpth))\nbecause of $vs"
    occursin(dotsbl, read(fname, String)) || error(estr)
  end
  return links_in
end
"""Get title of a qmd file"""
function get_title(root,fi)
  txt = read("$root/$fi", String) 
  res = match(r"\-\-\-\ntitle:\s+([^\n]+)", txt)
  if isnothing(res) error("empty $root/$fi") end 
  return only(res.captures)
end
"""Find for a file all links and surrounding sentences"""
function get_links(root,fi) 
  WIDTH = 80
  txt = read("$root/$fi", String) 
  res = [] 
  for m in eachmatch(r"\[[^\]]+\]\(([^\)]+)\)", txt) 
    mstr = m.captures[1] 
    if all(x->isnothing(match(x, mstr)), [r"http",r".jpeg", r".pdf", r"jpg", r"www."])
      # if the path is a relative path, add the root 
      mstr = make_absolute(root, mstr) 
      # if the link refers to a specific section of a page, cut that off 
      mstr = occursin("#", mstr) ? mstr[1:findlast("#", mstr).start-1] : mstr 

      # if the link points to just a folder, add a index.qmd 
      # mstr = occursin(".", last(split(mstr,"/"))) ? mstr : "$(mstr)/index.qmd" 

      # remove index.qmd
      mstr = replace(mstr, "index.qmd"=>"") 

      # normalize the filepath 
      mstr = normpath("/"*mstr)

      # Sanity checks 
      if mstr[end - 3 : end] ∈ [".pdf", ".png", ".jpg"] continue end 
      if occursin(".",mstr) 
        mstr[end - 3 : end] == ".qmd" || error("mstr $mstr in $root/$fi")
        mstr = mstr[1:end-4]
      end

      # clean up context
      prestr_ = clean(txt[1:m.offset-1])
      poststr_ = clean(txt[m.offset+length(m.match) : end])
      prestr  = prestr_[max(1, length(prestr_) - WIDTH) : end]
      poststr = poststr_[1 : min(length(poststr_),WIDTH)]
      length(prestr) > 0 && length(poststr) > 0 || error("$root/$fi")
      prestr = prestr[1] == '"' ? '\\'*prestr : prestr
      poststr = poststr[end] == '\\' ? poststr[1:end-1] : poststr
      ctx = prestr * "<b>" * clean(rm_link(m.match)) * "</b>" * poststr 
      
      push!(res,mstr => ctx) 
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
  """\nlisting:
  id: backlinks
  type: table
  page-size: 100000
  filter-ui: true
  template: "$d/ejs/custom.ejs"
  contents:
    - $d/$name
"""
end

bash(str::String) = run(`bash -c $str`)

bash("touch backlinks/docs; rm -r backlinks/docs") # clear old backlinks
links_out, title_dict, links_in, include_in = pipeline();