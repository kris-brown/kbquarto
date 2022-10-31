-  The concepts of opposite/dagger/skeleton extend from preorders to 
   $\mathcal{V}$ categories.
    - An opposite $\mathcal{V}$ category $\mathcal{X}$ has the same objects and 
      $\mathcal{X}^{op}(x,y):=\mathcal{X}(y,x)$
    - A *dagger* category is identical to its opposite.
    - A skeletal $\mathcal{V}$ category is one in which 
      $I \leq \mathcal{X}(x,y) \land I \leq \mathcal{X}(y,x)$ implies $x = y$
- Recall an [extended metric space](/docs/math/defs/metric_space.qmd) $(X,d)$ 
  is a [Lawvere metric space](/docs/math/defs/lawvere_metric_space.qmd) with two extra 
  properties.
- Show that a [skeletal](/docs/math/defs/skeletality.qmd) dagger 
  **Cost**-category is an extended metric space.

::: {.callout-note collapse=true appearance="minimal"}
## Solution

- The [skeletal](/docs/math/defs/skeletality.qmd) dagger **Cost** category has a 
  set of objects, $Ob(\mathcal{X})$ which we can call points.
- For any pair of points, we assign a hom-object in $[0,\infty]$ (we can call 
  this a distance function).
- Skeletal property enforces the constraint $d(x,y)=0 \iff x=y$.
- The second enriched category property enforces the triangle inequality.
- Because we have a dagger category, our distance function is forced to be 
  symmetric.
- Just like the information of a preorder is discarded (to yield a set) when we 
  only consider skeletal dagger preorders, information must be discarded from 
  **Cost**-categories to yield a Lawvere metric space.

:::
