Recall [skeletal](/docs/math/defs/skeletality.qmd) preorders and dagger preorders.

Show that a skeletal dagger preorder is just a discrete preorder (and hence can 
be identified with a set).

::: {.callout-note collapse=true appearance="minimal"}
## Solution
-  Because preorders are reflexive, we just have to show
   $a \ne b \implies a \not\leq b$, or its contrapositive: 
   $a \leq b \implies a = b$.
- $a \leq b \overset{dagger}{\implies} b \leq a \overset{skeletal}{\implies} a = b$
:::