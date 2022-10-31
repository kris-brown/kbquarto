Given two objects $X,Y \in \mathcal{C}$, the *product* $X \times Y$ is another 
object in $\mathcal{C}$ with morphisms 
$X \xleftarrow{p_x}X\times Y\xrightarrow{p_y}Y$

- This should satisfy the property that there exists a unique morphism making 
  the following diagram commute for any other object $C$ and morphisms 
  $X \xleftarrow{f}C\xrightarrow{g}Y$
- \begin{tikzcd} \pagecolor{white} & C \arrow[dd, "f \times g", dashed] \arrow[ld, "f"'] \arrow[rd, "g"] &   \\X &                                                                     & Y \\  & X \times Y \arrow[lu, "p_x"] \arrow[ru, "p_y"']                     &  \end{tikzcd}