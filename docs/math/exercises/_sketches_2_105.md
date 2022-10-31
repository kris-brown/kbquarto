Consider the distance matrix represented by this graph:

\begin{tikzcd}[ampersand replacement=\&] \pagecolor{white}
  A  \arrow[d, "3", bend right] \& B \arrow[l, "2"', bend right] \arrow[d, "5"', bend left] \\
  D  \arrow[ru, "3"] \& C \arrow[l, "6", bend left]
\end{tikzcd}


|$\rightarrow$ | A  | B | C | D  |
|-----|--|--|--|--|
 | **A**             | 0  | 6 | 3 | 11 |
  |**B**             | 2  | 0 | 5 | 5  |
|**C**             | 5  | 3 | 0 | 8  |
 | **D**             | 11 | 9 | 6 | 0  |

Compute the distance matrix by power iteration of the matrix of the presentation.

::: {.callout-note collapse=true appearance="minimal"}
## Solution

| $M$ | A        | B        | C        | D        |
|---|----|---|----|---|
| **A**   | 0        | $\infty$ | $\infty$ | 3        |
| **B**   | 2        | 0        | 5        | $\infty$ |
| **C**   | $\infty$ | $\infty$ | 0        | 6        |
| **D**   | $\infty$ | 3        | $\infty$ | 0        |


|  $M^2$ | A        | B | C        | D  |
|----|--------|---|-----|---|
|  A     | 0        | 6 | $\infty$ | 3  |
|  B     | 2        | 0 | 5        | 11 |
|  C     | $\infty$ | 9 | 0        | 6  |
|  D     | 5        | 3 | 8        | 0  |

  After this, $M^n$ is the $\rightarrow$ matrix
:::