Does $\mathbb{R}\xrightarrow{\lceil x/3 \rceil}\mathbb{Z}$ have a left adjoint
$\mathbb{Z} \xrightarrow{L} \mathbb{R}$? If not, why? If so, does its left 
adjoint have a left adjoint?

::: {.callout-note collapse=true appearance="minimal"}
## Solution
-  \begin{tikzcd} \pagecolor{white}
    \mathbb{R} \arrow[d, "R"', dashed, bend right]  & 0.0 \arrow[d, dashed] \arrow[r, "\leq"] & x \arrow[rd, dashed] \arrow[r, "\leq"] & 1.0 \arrow[d, dotted] \arrow[rr, "\leq"] &  & \dots \\
    \mathbb{Z} \arrow[u, "L?"', dotted, bend right] & 0 \arrow[rr, "\leq"]                    &                                        & 1 \arrow[rr, "\leq"]                     &  & \dots
    \end{tikzcd}
- Assume we have an arbitrary left adjoint, $L$.
- For $x$ as it approaches $0.0 \in \mathbb{R}$ from the right, we have 
  $R(x) \leq 1$, therefore $L(1) \leq x$ because $L$ is left adjoint.
- Therefore $L(1)\leq 0.0$, yet this implies $1 \leq R(0.0)$.
- This contradicts $R(0.0)=0$, therefore no left adjoint exists.
:::