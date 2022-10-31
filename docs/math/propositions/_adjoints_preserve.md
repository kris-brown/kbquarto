- Let $P \overset{f}{\underset{g}{\rightleftarrows}} Q$ be 
  [monotone maps](/docs/math/defs/monotone_map.qmd) with $f \dashv g$.
- Right adjoints preserve [meets](/docs/math/defs/meet.qmd)
    - Suppose $A \subseteq Q$ is any subset and $g(A)$ is its image.
    - Then, if $A$ has a meet $\wedge A \in Q$, then $g(A)$ has a meet 
      $\wedge g(A) \in P$
    - And $g(\wedge A) \cong \wedge g(A)$
- Left adjoints preserve [joins](/docs/math/defs/join.qmd)
    - Given $A \subseteq P$ and its image $f(A) \subseteq Q$
    - Then, if $A$ has a join $\vee A \in P$, then $\vee f(a) \in Q$ exists
    - And $f(\vee A) \cong \vee f(A)$

::: {.callout-note collapse=true appearance="minimal"}
## Proof
- Left adjoints preserve joins
    - let $j = \vee A \subseteq P$
    - Given $f$ is monotone, $\forall a \in A: f(a) \leq f(j)$, i.e. we have 
      $f(a)$ as an upper bound for $f(A)$
    - To show it is a *least* upper bound, take some arbitrary other upper bound 
      $b$ for $f(A)$ and show that $f(j) \leq b$
        - Because $j$ is the least upper bound of $A$, we have $j \leq g(b)$
        - Using the Galois connection, we have $f(j) \leq b$ showing that $f(j)$ 
          is the least upper bound of $f(A) \subseteq Q$.
- Right adjoints preserving meets is dual to this.

:::