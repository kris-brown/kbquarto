Given $f \dashv g$, prove that the composition of left and right adjoint 
monotone maps is a closure operator

1. Show $p \leq (f;g)(p)$
2. Show $(f;g;f;g)(p) \cong (f;g)(p)$

::: {.callout-note collapse=true appearance="minimal"}
## Solution
1.  This is one of the conditions of adjoint functors: $p \leq g(f(p))$
2.
    - The $\leq$ direction is an extension of the above: 
      $p \leq g(f(p)) \leq g(f(g(f(p))))$
    - Galois property: $q  \geq f(g(q))$, substitute $f(p)$ for $q$ to get 
      $f(p) \geq f(g(f(p)))$.
    - Because $g$ is a monotone map, we can apply it to both sides to get 
      $g(f(p)) \geq g(f(g(f(p))))$
:::