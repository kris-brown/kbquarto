Choose a nontrivial **Cost**-[category](/docs/math/defs/vcat.qmd) 
$\mathcal{X}$ and draw a bridge-style diagram of the 
[unit profunctor](/docs/math/defs/unit_prof.qmd) 
$\mathcal{X} \overset{U_\mathcal{X}}\nrightarrow \mathcal{X}$

::: {.callout-note collapse=true appearance="minimal"}
## Solution

\begin{tikzcd} \pagecolor{white}
  & A \arrow[ld, "3"', bend right] \arrow[rd, "2", bend left] \arrow[rrr, blue,"0", dotted] &                                       &                                     & A \arrow[ld, bend right] \arrow[rd, bend left] &   \\
  B \arrow[rd, "4", bend right] \arrow[rr, "1"] \arrow[rrr, "0"', blue, dotted, bend right] &                                                                                    & D \arrow[rrr, "0", dotted, blue,bend left] & B \arrow[rd, bend right] \arrow[rr] &                                                & D \\
  & C \arrow[ru, "1"', bend right] \arrow[rrr, "0", blue, dotted]                            &                                       &                                     & C \arrow[ru, bend right]                       &
\end{tikzcd}
:::
