There is a bijection between ways to partition a set $A$ 
and the equivalence relations on $A$

::: {.callout-note collapse=true appearance="minimal"}
## Proof
- Every partition gives rise to a distinct equivalence relation
  - Define $a \sim b$ to mean $a,b$ are in the same part. This is a reflective, 
    symmetric, and transitive relation given the definition of a partition.
- Every equivalence relation gives rise to a distinct partition.
  - Define a subset $X \subseteq A$ as $\sim$-closed if, for every $x \in X$ and 
    $x' \sim x$, we have $x' \in X$.
  - Define a subset $X \subseteq A$ as $\sim$-connected if it is nonempty and 
    $\forall x,y \in X:\ x \sim y$
  - The parts corresponding to $\sim$ are precisely the $\sim$-closed and 
    $\sim$-connected subsets.
:::