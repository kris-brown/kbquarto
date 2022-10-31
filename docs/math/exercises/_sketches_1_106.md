Given a function $\{1 \mapsto \{1,2\}, 2 \mapsto \{1,2\}, 3 \mapsto \{3\}, 4 \mapsto \{4\}\}$ 
from the four element set $S$ to the three element set $T$

1. Choose a nontrivial [partition](/docs/math/defs/partition.qmd) $c \in Prt(S)$ and compute 
   $g_!(c) \in Prt(T)$
2. Choose any coarser partition $g_!(c)\leq d \in Prt(T)$
3. Choose any non-coarser partition $g_!(c) > e \in Prt(T)$
4. Find $g^*(d)$ and $g^*(e)$
5. Show that the adjunction formula is true, i.e. that $c \leq g^*(d)$ (because 
   $g_!(c) \leq d$) and $g^*(e) > c$ (because $e > g_!(c)$)

::: {.callout-note collapse=true appearance="minimal"}
## Solution
1. $c = \{(1, 3),(2,), (4,)\}$, $g_!(c)$ is then $\{(12,3),(4,)\}$
2. $d = \{(12,),(3,),(4,)\}$
3. $e = \{(12,3,4)\}$
4. $g^*(d)=\{(1,2),(3,),(4,)\}, g^*(e)=\{(1,2,3,4)\}$
5. $c \leq g^*(d)$ and $g^*(e) > c$
:::