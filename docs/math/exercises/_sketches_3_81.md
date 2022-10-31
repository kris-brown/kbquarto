Let $z \in P$ be an element of a [preorder](/docs/math/defs/preorder.qmd), and 
consider the corresponding category $\mathcal{P}$. Show that $z$ is a 
[terminal object](/docs/math/defs/terminal.qmd) iff it is a *top element* in $P$, 
i.e. $\forall c \in P: c \leq z$

::: {.callout-note collapse=true appearance="minimal"}
## Solution
There is a morphism from every object if every object is less than $z$, and the 
uniqueness comes from the fact that [preorders](/docs/math/defs/preorder.qmd) 
are thin categories.

:::