Recall the [symmetric monoidal preorder](/docs/math/defs/smp.qmd) 
$\mathbf{NMY} := (P,\leq, yes, min)$ from 
[Exercise 2.34](/docs/math/exercises/sketches_2_34.qmd). 
Interpret what a **NMY**-category is.

::: {.callout-note collapse=true appearance="minimal"}
## Solution
It is like a graph where some edges are 'maybe' edges.  We can ask the 
question "Is there a path from $a$ to $b$?" and if there is a true path we will 
get a 'yes'. If the only paths are those which include maybe edges, then we get 
a 'maybe'. If there's no path at all, we get a 'no'.
:::