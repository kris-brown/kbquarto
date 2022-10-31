- Consider the following functions $\mathbf{Cost} \xrightarrow{d,u} \mathbf{Bool}$
  - $d(x>0)\mapsto false,\ d(0)\mapsto true$
  - $u(x=\infty)\mapsto false,\ d(x < \infty) \mapsto true$
- For both of these, answer:

1. Is it [monotonic](/docs/math/defs/monotone_map.qmd)?
2. If so, does it satsify the monoidal monotone properties?
3. If so, is it strict?


::: {.callout-note collapse=true appearance="minimal"}
## Solution

- The function $d$ asks "Is it zero?", and the function $u$ asks "Is it finite?".
- Both of these questions are monotone: as we traverse forward in $\leq_{Cost}$, 
  we traverse towards being zero or being finite.
- The first monoidal monotone axiom is satisifed in both because the unit ($0$) 
  is mapped to the unit ($True$).
- The second monoidal monotone axiom holds for both because addition preserves 
  both things being zero (or not) and both things being finite (or not).
- These are strict because, in $\mathbb{B}$, equality and congruence coincide.
:::