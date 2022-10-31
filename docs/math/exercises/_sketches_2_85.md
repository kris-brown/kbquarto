Show that $\mathbf{Bool}=(\mathbb{B},\leq, true, \land)$ is monoidal closed.


::: {.callout-note collapse=true appearance="minimal"}
## Solution

- Our translation is: $\otimes \mapsto \land,\ \leq \mapsto \implies$
- Condition for being closed is then:
- $\forall a,v,w:$ $(a \land v) \implies w$ iff $a \implies (v \multimap w)$
- On the LHS, we have the truth table:

|  a | v | w | $(a \land v) \implies w$ |
|---|---|---|-----|
|  F | F | F | T                       |
|  F | F | T | T                       |
|  F | T | F | T                       |
|  F | T | T | T                       |
|  T | F | F | T                       |
|  T | F | T | T                       |
|  T | T | F | F                       |
|  T | T | T | T |

- In order to define $v \multimap w$ in a way consistent with this, we need it 
  to *only* be false when $v=true, w=false$, which is the truth condition for 
  $v \implies w$.
- This is consistent with a 'single use v-to-w converter' analogy.
:::