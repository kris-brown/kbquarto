
Let $\mathcal{X} \times \mathcal{Y}$ be the $\mathcal{V}$-product of two 
$\mathcal{V}$ [categories](/docs/math/defs/vcat.qmd).

1. Check that for every object we have 
   $I \leq (\mathcal{X} \times \mathcal{Y})((x,y),(x,y))$
2. Check that for every three objects we have:
    - $(\mathcal{X} \times \mathcal{Y})((x_1,y_1),(x_2,y_2)) \otimes (\mathcal{X} \times \mathcal{Y})((x_2,y_2),(x_3,y_3)) \leq (\mathcal{X} \times \mathcal{Y})((x_1,y_1),(x_3,y_3))$

::: {.callout-note collapse=true appearance="minimal"}
## Solution
1.
    - By axioms of $\mathcal{V}$ categories: $I \leq \mathcal{X}(x,x')=xx$ and $I \leq \mathcal{Y}(y,y')=yy$
    - By monotonicity: $I \leq xx \land I \leq yy$ implies $I = I \otimes I \leq xx \otimes yy$.
    - By the definition of a product category this last term can be written as $(\mathcal{X} \times \mathcal{Y})((x,y),(x,y))$

2.
    - By axioms of $\mathcal{V}$ categories: $\mathcal{X}(x_1,x_2) \otimes \mathcal{X}(x_2,x_3) \leq \mathcal{X}(x_1,x_3)$ and $\mathcal{Y}(y_1,y_2) \otimes \mathcal{Y}(y_2,y_3) \leq \mathcal{Y}(y_1,y_3)$
    - Therefore, by monotonicity, we have $(\mathcal{X}(x_1,x_2) \otimes \mathcal{X}(x_2,x_3)) \otimes (\mathcal{Y}(y_1,y_2) \otimes \mathcal{Y}(y_2,y_3)) \leq \mathcal{X}(x_1,x_3) \otimes  \mathcal{Y}(y_1,y_3)$
    - Desugaring the definiton of the hom-object in $\mathcal{X}\times\mathcal{Y}$, the property we need to show is that $(\mathcal{X}(x_1,x_2) \otimes\mathcal{Y}(y_1,y_2)) \otimes (\mathcal{X}(x_2,x_3) \otimes\mathcal{Y}(y_2,y_3)) \leq (\mathcal{X}(x_1,x_3) \otimes\mathcal{Y}(y_1,y_3))$
    - Given the \textbf{associativity} and \textbf{commutitivity} of the $\otimes$ operator, we can rearange the order and ignore parentheses for the four terms on the LHS. Do this to yield the desired expression.
:::