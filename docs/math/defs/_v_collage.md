The collage of a $\mathcal{V}$ [profunctor](/docs/math/defs/vprof.qmd), $\mathcal{X}\overset{\phi}\nrightarrow \mathcal{Y}$

- A $\mathcal{V}$ [category](/docs/math/defs/vcat.qmd), denoted $\mathbf{Col}(\phi)$
    - $Ob(\mathbf{Col}(\phi)):=$$Ob(\mathcal{X})\sqcup Ob(\mathcal{Y})$
    - $\mathbf{Col}(\phi)(a,b) :=$ $\begin{cases}\mathcal{X}(a,b) & a,b \in \mathcal{X} \\ \phi(a,b)& a \in \mathcal{X}, b \in \mathcal{Y} \\ \varnothing & a \in \mathcal{Y}, b \in \mathcal{X} \\ \mathcal{Y}(a,b) & a,b \in \mathcal{Y} \end{cases}$
- There are obvious functors 
  $\mathcal{X}\xrightarrow{i_\mathcal{X}}\mathbf{Col}(\phi)$ and 
  $\mathcal{Y}\xrightarrow{i_\mathcal{Y}}\mathbf{Col}(\phi)$ sending each 
  object to "itself" called *collage inclusions*.