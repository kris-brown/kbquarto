Find a different [monoidal monotone map](/docs/math/defs/monoidal_monotone.qmd) 
$\mathbf{Cost}\xrightarrow{g}\mathbf{Bool}$ from the one in 
[Example 2.65](/docs/math/examples/monoidal_monotone_n_r.qmd).  
Using the construction from 
[Proposition 2.64](/docs/math/propositions/enriched_base_change.qmd), convert a 
[Lawvere metric space](/docs/math/defs/lawvere_metric_space.qmd) into two different 
preorders. Find a metric space for which this happens.

::: {.callout-note collapse=true appearance="minimal"}
## Solution
- Take the two monoidal monotone maps from 
  [Exercise 2.44](/docs/math/exercises/sketches_2_44.qmd)
- $f$ yields a discrete preorder whereas $g$ does not.
- \begin{tikzcd} \pagecolor{white} A \arrow[r, "1"] & B \\A \arrow[r, "\not\leq_f", dotted] & B \\A \arrow[r, "\leq_g"]             & B\end{tikzcd}

:::