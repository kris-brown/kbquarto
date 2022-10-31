What is the distance matrix represented by this graph?

\begin{tikzcd}[ampersand replacement=\&]
  A  \arrow[d, "3", bend right] \& B \arrow[l, "2"', bend right] \arrow[d, "5"', bend left] \\
  D  \arrow[ru, "3"] \& C \arrow[l, "6", bend left]
\end{tikzcd}

::: {.callout-note collapse=true appearance="minimal"}
## Solution

|$\rightarrow$ | A  | B | C | D |
|--------------|---|---|---|----|
|**A**             | 0  | 6 | 3 | 11|
|**B**             | 2  | 0 | 5 | 5 |
|**C**             | 5  | 3 | 0 | 8 |
|**D**             | 11 | 9 | 6 | 0 |

:::