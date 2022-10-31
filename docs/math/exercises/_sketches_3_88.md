Let $x,y \in P$ be elements of a [preorder](/docs/math/defs/preorder.qmd) and 
$\mathcal{P}$ be the corresponding category. Show that the 
[product](/docs/math/defs/product.qmd) $x \times y$ in $\mathcal{P}$ agrees with 
their [meet](/docs/math/defs/meet.qmd) $x \land y$ in $P$.

::: {.callout-note collapse=true appearance="minimal"}
## Solution

- The uniqueness aspect of the product is not relevant since all morphisms are 
  unique in a preorder category.
- The product definition translates to an operation which takes a pair of 
  objects in a preorder and gives us another object with the property that 
  $x \times y \leq x$ and $x \times y \leq y$, and for any other $b$ that also 
  has this property we have $b \leq x\times y$
- Considering the set $A=\{x,y\}$, the conditions for $x \times y$ matches the 
  definition of $\bigwedge A$ (grestest lower bound).

:::