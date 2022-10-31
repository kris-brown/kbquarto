- The category of graphs **Grph** is a 
  [functor category](/docs/math/defs/funcat.qmd)
- Schema for graphs: $\mathbf{Gr}:=\boxed{\overset{Arr}\bullet \overset{src}{\underset{tar}{\rightrightarrows}}\overset{Vert}\bullet}$
- A graph [instance](/docs/math/examples/dbinst.qmd) has a set of points and a 
  set of arrows, each of 
  which has a source and target.
- There is a bijection between graphs and **Gr** instances
- The objects of **GrInst** are graphs, the morphisms are *graph homomorphisms* 
  ([natural transformations](/docs/math/defs/natural_transformation.qmd) 
  between two **Gr** to **Set** 
  [functors](/docs/math/defs/functor.qmd))
  - Each graph homomorphism contains two components, which are morphisms in 
    **Set**:
      1. $G(Vert) \xrightarrow{\alpha_{vert}} H(vert)$
      2.  $G(Arr) \xrightarrow{\alpha_{arr}} H(Arr)$
  - Naturality conditions
      1. \begin{tikzcd} \pagecolor{white} G(Arr) \arrow[r, "\alpha_{Arr}"] \arrow[d, "G(src)"'] & H(Arr) \arrow[d, "H(src)"] \\G(Vert) \arrow[r, "\alpha_{Vert}"']                   & H(Vert)                   \end{tikzcd}
      2. \begin{tikzcd} \pagecolor{white} G(Arr) \arrow[r, "\alpha_{Arr}"] \arrow[d, "G(tar)"'] & H(Arr) \arrow[d, "H(tar)"] \\G(Vert) \arrow[r, "\alpha_{Vert}"']                   & H(Vert)                   \end{tikzcd}