Show that when $P$ is a discrete [preorder](/docs/math/defs/preorder.qmd), then 
every function $P \rightarrow Q$ 
is a [monotone map](/docs/math/defs/monotone_map.qmd), regardless of the 
order $\leq_Q$.

::: {.callout-note collapse=true appearance="minimal"}
## Solution
The only time the monotonicity criterion is deployed is when two elements of $P$ 
are related, and for a discrete category this means we only have to check 
whether $f(a) \leq_Q f(a)$, which is true because preorders are reflexive.
:::