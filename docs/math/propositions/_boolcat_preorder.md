There is a bijective correspondence between 
[preorders](/docs/math/defs/preorder.qmd) and 
[**Bool**-categories](/docs/math/examples/bool_category.qmd).

::: {.callout-note collapse=true appearance="minimal"}
## Proof
- Construct preorder $(X,\leq_X)$ from any $\mathbb{B}$-category $\mathcal{X}$
  - Let $X$ be $Ob(\mathcal{X})$ and $x\ \leq_X\ y$ be defined as 
    $\mathcal{X}(x,y)=true$
  - This is reflexive and transitive because of the two constraints we put on 
    enriched categories.
    - The first constraint says that $true \leq (x \leq_X x)$
    - The second constraint says 
      $(x \leq_X y) \land (y \leq_X z) \leq (x \leq_X z)$
- Construct $\mathbb{B}$-category from a preorder:
    - Let $Ob(X)=X$ and define $\mathcal{X}(x,y)=true$ iff $x \leq_X y$
    - The two constraints on preorders give us our two required constraints on 
      enriched categories.
:::