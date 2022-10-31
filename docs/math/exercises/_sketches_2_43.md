Consider a proposed monoidal monotone $\mathbf{Bool}\xrightarrow{g}\mathbf{Cost}$ 
with $g(false)=\infty, g(true)=0$

- Check that the map is monotonic and that it satisfies both properties of 
  monoidal monotones.
- Is $g$ strict?

::: {.callout-note collapse=true appearance="minimal"}
## Solution

-  It is monotonic:  $\forall a,b \in \mathbb{B}: a\leq b \implies g(a)\leq g(b)$
    - there is only one nonidentity case in $\mathbf{Bool}$ to cover, and it is 
      true that $\infty\ \leq_\mathbf{Cost}\ 0$.
- Condition on units: $0 \leq_\mathbf{Cost} g(true)$ (actually, it is equal)
- In $\mathbf{Cost}$: $g(x) + g(y) \geq g(x \land y)$
    - if both true/false, the equality condition holds.
    - If one is true and one is false, then LHS and RHS are $\infty$ (as 
      $x \land y = False$).
- Therefore this is a *strict* monoidal monotone.
:::