Recall the [regions of the world](/docs/math/exercises/sketches_2_52.qmd) 
Hausdorff metric space we learned that 
a metric space can be converted into a preorder by a 
[particular](/docs/math/examples/metric_to_preorder.qmd) 
[monoidal monotone map](/docs/math/defs/monoidal_monotone.qmd). How would you interpret the 
resulting preorder?

::: {.callout-note collapse=true appearance="minimal"}
## Solution
The edges in the preorder represent the $\subseteq$ relation. For Boston, US, 
and Spain, it would look like this (with implicit self-edges): 
\begin{tikzcd} \pagecolor{white} US& Spain \\Boston \arrow[u] &\end{tikzcd}
:::