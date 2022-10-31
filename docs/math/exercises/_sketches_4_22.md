Consider the following **Cost** [profunctors](/docs/math/defs/vprof.qmd) $\textcolor{blue}{\phi},\textcolor{red}{\psi}$ \[
      \begin{tikzcd}[ampersand replacement=\&] \pagecolor{white}
        A \arrow[d, "3"', bend right] \& B \arrow[l, "2"', bend right] \arrow[d, "5", bend left] \arrow[r, "11", blue, dotted, bend left] \& x \arrow[rr, "3", bend left] \arrow[rd, "4", bend left] \&                                                                      \& z \arrow[ld, "4", bend left] \arrow[r, "4", red,dotted, bend left] \arrow[rd, red, "4", dotted, bend right] \& p \arrow[r, "2", bend left] \& q \arrow[d, "2", bend left] \\
        C \arrow[ru, "3"]             \& D \arrow[l, "4", bend left] \arrow[rr, blue, "9", dotted, bend right]                            \&                                                         \& y \arrow[lu, "3", bend left] \arrow[rrr, red, "0", dotted, bend right=49] \&                                                                                                    \& d \arrow[u, "1", bend left] \& r \arrow[l, "1", bend left]
      \end{tikzcd}
    \]

Fill in the matrix for the 
[composite profunctor](/docs/math/defs/vprof_comp.qmd).

::: {.callout-note collapse=true appearance="minimal"}
## Solution
| $\phi;\psi$ | p  | q  | r  | s  |
|---|--|--|--|--|
| A           | 23 | 25 | 21 | 22 |
| B           | 17 | 19 | 15 | 16 |
| C           | 20 | 22 | 18 | 19 |
| D           | 11 | 13 | 9  | 10 |
:::
