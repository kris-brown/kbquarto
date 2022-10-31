Show that if $P \xrightarrow{f}Q$ has a right adjoint $g$, then it is unique up 
to [isomorphism](/docs/math/defs/preorder_isomorphism.qmd). Is the same true for left adjoints?

::: {.callout-note collapse=true appearance="minimal"}
## Solution

- Suppose $h$ is also right adjoint to $f$.
- What it means for $h \cong g$:
    - $\forall q \in Q:  h(q) \cong g(q)$
- $g(q) \leq h(q)$
    - Substitute $g(q)$ for $p$ in $p \leq h(f(p))$ (from $h$'s adjointness) to 
      get $g(q) \leq h(f(g(q)))$
    - Also apply $h$ to both sides of $f(g(q)) \leq q$ (from $g$'s adjointness) 
      to get $h(f(g(q)))\leq h(q)$
    - The result follows from transitivity.
- By symmetry (nothing was specified about $h$ or $g$) the proof of 
  $h(q)\leq g(q)$ is the same.
- Same reasoning for left adjoints.
:::