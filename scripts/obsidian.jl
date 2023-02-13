using DataStructures
const VAULT = "/Users/kristopherbrown/code/quartz/vault/"
const QUART = "/Users/kristopherbrown/code/kbquarto/"
const OBSID = "docs/phil/"
const BACK = "/Users/kristopherbrown/code/kbquarto/backlinks/"
const PSS = Pair{String,String}
const WIDTH = 80

is_md(x) = occursin(".md",x)
fix_title(x) = replace(lowercase(x), "?"=>"")

"""Find, for each qmd file, the outgoing links and their surrounding sentences"""
function get_links(fi)::Vector{PSS} 
  txt = read(joinpath(VAULT,fi), String)
  return map(eachmatch(r"\[\[([^\]]+)\]\]", txt)) do m  
    mstr = String.(split(m.captures[1],"|"))
    (lnk, disp) = length(mstr) == 1 ? repeat(mstr,2) : mstr
    # clean up context
    prestr_ = " " *clean(txt[1:m.offset-1])* " "
    poststr_ = " " *clean(txt[m.offset+length(m.match) : end])* " "
    prestr_ind  = nextind(prestr_,  max(1, length(prestr_) - WIDTH))
    poststr_ind = prevind(poststr_, min(length(poststr_), WIDTH))
    prestr  = " " * prestr_[prestr_ind : end] * " "
    poststr = " " * poststr_[1 : poststr_ind] * " "
    prestr = prestr[2] == '"' ? " \\"*prestr[2:end] : prestr
    poststr = poststr[end] == '\\' ? poststr[1:end-1] : poststr
    ctx = prestr * "<b>" * disp * "</b>" * poststr 
    return lowercase(lnk) => ctx
  end
end

function get_links()
  links_out = Dict{String,Vector{PSS}}()
  title_dict = Dict{String,String}()
  for (root, _, files) in walkdir(VAULT) 
    for fi in filter(is_md, files)
      P = fi[1 : end - 3]
      p = fix_title(P)
      title_dict[p]=P
      links_out[p] = get_links(joinpath(VAULT,root,fi))
    end 
  end 
  links_in = get_links_in(links_out)
  return title_dict, links_in, links_out
end 

rm_link(txt) = replace(txt, r"\[(.*?)\]\(.*?\)"=> s"\g<1>")

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
  txt = replace(txt, r"\s+"=> " ") # all whitespace is space
  txt = replace(txt, r"\\\\"=> "") # remove normal escape characters
  txt = replace(txt, r"\""=> "\\\"") # escape "
  return txt
end

function get_links_in(links_out)
  links_in = DefaultDict{String,Vector{PSS}}(()->PSS[])

  for (fi, outlinks) in collect(links_out) 
    for (out, ctx) in outlinks 
      push!(links_in[out], fi=>ctx)
    end 
  end 
  return links_in 
end 

"""Render an [[internal|link]] as a [markdown](link) in a .qmd file"""
function replace_link(title_dict)
  function f(mtch)
    res = split(mtch[3:end-2],"|")
    ttl, disp = length(res) == 1 ? repeat(res,2) : res
    ttlp = split(ttl,"#")
    ttl, p = length(ttlp) == 1 ? (ttl,"") : (ttlp[1],"#"*ttlp[2])
    return "[$disp](/$(joinpath(OBSID,title_dict[fix_title(ttl)])).html$p)"
  end 
end

function process(pthfi, links_in, title_dict)
  fi = last(split(pthfi,"/"))
  real_name = joinpath(dirname(pthfi), title_dict[fi]) * ".md"
  println("processing $fi ($real_name)\n\n")
  txt = read(real_name, String)
  if !isempty(links_in)
    # Add the backlinks file to backlinks folder
    render_links(fi, links_in)
    # Add the path to backlinks file in the metadata 
    t1,t2,t3... = split(txt,"---\n")
    n = count(==('/'), joinpath(OBSID,fi))
    txt = join([t1,t2*show_listing(n,fi),t3...],"---\n")
  end 
  txt = replace(txt,r"!\[\[([^\]]+)\]\]" => s"{{< include \"\1.qmd\" >}}")
  txt = replace(txt,r"\[\[([^\]]+)\]\]" => replace_link(title_dict))
  txt = replace(txt, "```mermaid"=>"```{mermaid}")
  newfi = joinpath(QUART, OBSID, fi*".qmd")
  mkpath(dirname(newfi))
  open(newfi, "w") do io
    write(io, txt)
  end
end

"""create a backlinks yaml file"""
function render_links(fi, links_in)
  kpth = joinpath(BACK,"$fi.yml")
  mkpath(dirname(kpth))
  open(kpth, "w") do io
    for (link, ctx) in links_in 
      println(io,"- name: $(last(split(link,"/")))")
      println(io,"  href: /$(joinpath(OBSID,link)).html")
      println(io,"  custom-field: \"$ctx\"")
    end
  end
end

show_listing(ndots::Int,name::AbstractString)  = 
  """\nlisting:
  id: backlinks
  type: table
  page-size: 100000
  filter-ui: true
  template: "$(join(fill("..", ndots), "/"))/ejs/custom.ejs"
  contents:
    - $(join(fill("..", ndots), "/"))/backlinks/$name.yml
"""

########
# MAIN # 
########
title_dict, links_in, links_out = get_links()
for (root, _, files) in walkdir(VAULT) 
  for file in filter(is_md, files)
    fi = fix_title(file[1:end-3])
    l_in = links_in[fi]
    process(joinpath(root,fi), l_in, title_dict)
  end 
end 