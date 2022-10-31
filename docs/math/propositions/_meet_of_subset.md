Suppose $(P,\leq)$ is a [preorder](/docs/math/defs/preorder.qmd) and 
$A \subseteq B \subseteq P$ are subsets that have meets. Then 
$\bigwedge B \leq \bigwedge A$.

::: {.callout-note collapse=true appearance="minimal"}
## Proof
-  Let $m = \bigwedge A$ and $n = \bigwedge B$.
- For any $a \in A$ we also have $a \in B$, so $n \leq A$ because $n$ is a lower 
  bound for $B$.
- Thus $n$ is also a lower bound for $A$ and hence $n \leq m$ because $m$ is 
  $A$'s greatest lower bound.
:::
