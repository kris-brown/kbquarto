- Show that the 
  [limit formula](/docs/math/propositions/limitformula.qmd) works for 
  products in **Set**
- The diagram, whose limit is a product, is 
  $\mathcal{J}=\boxed{\overset{v}\bullet\ \overset{w}\bullet}$ (
  see [this example](/docs/math/examples/prodlimit.qmd))


::: {.callout-note collapse=true appearance="minimal"}
## Solution

- $V=\{v,w\}, A=\varnothing$
- The second condition of the set comprehension is vacuously satisfied because
   $A = \varnothing$
- So all we have left is all pairs of tuples where the first element comes 
  from $D(v)$ and the second element comes from the set $D(w)$.
- This is the Cartesian product $D(v) \times D(w)$
:::
