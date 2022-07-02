local function file_exists(name)
  local f = io.open(name, 'r')
  if f ~= nil then io.close(f); return true
  else return false end
end

function RawBlock(el)

  --- Create a standalone LaTeX document which contains only the TikZ picture.
  --- Convert to png via Imagemagick.
  local function tikz2image(src, outfile)
    local tmp = os.tmpname()
    local tmpdir = string.match(tmp, "^(.*[\\/])") or "."
    local f = io.open(tmp .. ".tex", 'w')
    f:write("\\documentclass{standalone}\n")
    -- include all packages needed to compile your images
    f:write("\\usepackage{tikz}\n\\usepackage{tikz-cd}\n\\usepackage{amsmath}\n\\usepackage{amssymb}\n\\usepackage{mathrsfs}\n\\usepackage{mathtools}\n\\usepackage{stanli}\n")
    f:write([[\usetikzlibrary{arrows}
    \usetikzlibrary{backgrounds}
    \usetikzlibrary{shapes,shapes.geometric,shapes.misc}
    \tikzstyle{tikzfig}=[baseline=-0.25em,scale=0.5]
    \tikzstyle{0.75x1}=[fill=white, draw=black, shape=rectangle, minimum width=0.75cm, minimum height=1cm]
    \tikzstyle{0.25x0.5}=[fill=white, draw=black, shape=rectangle, minimum width=0.25cm, minimum height=0.5cm]
    \tikzstyle{10x5}=[draw=black, shape=rectangle, minimum width=20cm, minimum height=10cm]
    \tikzstyle{blue pointer}=[->, draw=blue]
    \tikzstyle{dashed edge}=[<->, dashed]
    \pgfdeclarelayer{nodelayer}
    \pgfdeclarelayer{edgelayer}
    \pgfsetlayers{background,edgelayer,nodelayer,main}
    ]])
    f:write([[\tikzset{
      %Define standard arrow tip
      >=stealth',
      %Define style for boxes
      punkt/.style={
             rectangle,
             rounded corners,
             draw=black, very thick,
             text width=6.5em,
             minimum height=2em,
             text centered},
      % TAG Define arrow style
      pil/.style={
             ->,
             thick,
             shorten <=2pt,
             shorten >=2pt,}
  }]])
    f:write("\\begin{document}\n\\batchmode\n")
    f:write(src)
    f:write("\n\\end{document}\n")
    f:close()
    os.execute("pdflatex -output-directory " .. tmpdir  .. " " .. tmp)
    os.execute("convert -density 300 " .. tmp .. ".pdf -resize 50% " .. outfile)
    os.remove(tmp .. ".tex")
    os.remove(tmp .. ".pdf")
    os.remove(tmp .. ".log")
    os.remove(tmp .. ".aux")
  end

  -- Don't alter element if it's not a tikzpicture environment
  if not (el.text:match'^\\begin{tikzpicture}' or el.text:match'^\\begin{tikzcd}') then
    return nil
    -- Alternatively, parse the contained LaTeX now:
    -- return pandoc.read(el.text, 'latex').blocks
  end
  local fname = pandoc.sha1(el.text) .. ".png"
  if not file_exists(fname) then
    tikz2image(el.text, fname)
  end
  return pandoc.Para({pandoc.Image({}, fname)})
end
