A [functor](/docs/math/defs/functor.qmd) 
$\mathcal{C}\xrightarrow{L}\mathcal{D}$ is *left adjoint* to a 
functor  $\mathcal{D}\xrightarrow{R}\mathcal{C}$

- For any $c \in C$ and $d \in D$, there is an 
  [isomorphism](/docs/math/defs/iso.qmd) of hom-sets: 
  $\alpha_{c,d}: \mathcal{C}(c,R(d)) \xrightarrow{\cong} \mathcal{D}(L(c),d)$ 
  that is natural in *c* and *d*.
- Given a morphism $c \rightarrow{f} R(d)$ in $\mathcal{C}$, its image 
  $g:=\alpha_{c,d}(f)$ is called its *mate* (and vice-versa)
- To denote the adjunction we write $L \dashv R$ or 
  \begin{tikzcd} \pagecolor{white} \mathcal{C} \arrow[rr, "L", bend left] & \Rightarrow & \mathcal{D} \arrow[ll, "R", bend left]\end{tikzcd}
