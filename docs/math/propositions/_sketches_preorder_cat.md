- For any [preorder](/docs/math/defs/preorder.qmd), the identity function is a monotone map.
- The composition of two monotone maps ($P \xrightarrow{f} Q \xrightarrow{g} R$) 
  is also monotone.

::: {.callout-note collapse=true appearance="minimal"}
## Proof
-  Monotonicity translates to $a \leq b \implies a \leq b$ and is trivially true.
- Need to show: $a \leq_P b \implies g(f(a)) \leq_R g(f(b))$
    - The monotonicity of $f$ gives us $f(a) \leq_Q f(b)$ and the monotonicity 
      of $g$ gives us the result we need.

:::