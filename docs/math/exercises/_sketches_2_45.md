1. Is $(\mathbb{N},\leq,1,*)$ a SMP?
2. If so, does there exist a monoidal monotone $(\mathbb{N},\leq,0,+) \rightarrow (\mathbb{N},\leq,1,*)$
3. Is $(\mathbb{Z},\leq,*,1)$ a SMP?

::: {.callout-note collapse=true appearance="minimal"}
## Solution
1. Yes. Monotonicity holds, and multiplication by $1$ is unital. The operator 
   is symmetric and associative.
2. Exponentiation (say, by $2$) is a *strict* monoidal monotone.
  - $1 = 2^0$ and $2^x * 2^y = 2^{x+y}$
3. No: monotonicity does not hold (multiplying negative numbers gives a larger number).
:::