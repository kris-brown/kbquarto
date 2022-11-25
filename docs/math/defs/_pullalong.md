The *pullback* of [functor](/docs/math/defs/functor.qmd) 
$\mathcal{D}\xrightarrow{I}\mathbf{Set}$ *along* functor 
$\mathcal{C}\xrightarrow{F}\mathcal{D}$.

- The composite functor
  $\mathcal{C}\xrightarrow{F;I}\mathbf{Set}$
- Given a natural transformation $I \overset{\alpha}\Rightarrow J$, there is a 
  natural transformation $\alpha_F$ whose components (morphisms in **Set** from 
  $(F;I)(c)$ to $(F;J)(c)$, for any $c \in \mathcal{C}$ are given by: 
  $(\alpha_F)_c := \alpha_{F(c)}$
          \begin{tikzcd}                                                                             &                                                                           & \! \arrow[dd,Rightarrow,"\alpha"] &     \\\mathcal{C} \arrow[r, "F"]& \mathcal{D}\arrow[rr, "I", bend left=60] \arrow[rr, "J"', bend right=60] && Set \\& \! \arrow[dd,Rightarrow,"\alpha_F"]& \!&     \\\mathcal{C} \arrow[rr, "F;I", bend left=60] \arrow[rr, "F;J"', bend right=60]&&Set&     \\&\!&&    \end{tikzcd}
