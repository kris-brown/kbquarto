
Consider the functor $\mathbf{Gr}\xrightarrow{G}\mathbf{DDS}$ given by sending 
*src* to *next* and *tar* to *id* on *State*. Migrate the same data as in 
[this example](/docs/math/examples/ddspull.qmd) and draw the corresponding 
graph.

::: {.callout-note collapse=true appearance="minimal"}
## Solution

|Arr |src | tar|
|---|---|---|
|1   |4   | 1  |
|2   |4   | 2  |
|3   |5   | 3  |
|4   |5   | 4  |
|5   |5   | 5  |
|6   |7   | 6  |
|7   |6   | 7  |

\begin{tikzcd} \pagecolor{white}  & 1                       &                         & 2                     &                        \\3 &                         & 4 \arrow[lu] \arrow[ru] &                       &                        \\  & 5 \arrow[lu] \arrow[ru] &                         & 6 \arrow[r, bend left] & 7 \arrow[l,bend left]\end{tikzcd}
:::
