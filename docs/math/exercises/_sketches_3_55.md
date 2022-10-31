
Let's investigate why the [functor category](/docs/math/defs/funcat.qmd) is 
actually a 
[category](/docs/math/defs/cat.qmd).

1. Figure out how to compose 
   [natural transformations](/docs/math/defs/natural_transformation.qmd) 
   $F \xrightarrow{\alpha} G \xrightarrow{\beta}H$.
2. Propose an identity 
   [natural transformation](/docs/math/defs/natural_transformation.qmd) on any 
   [functor](/docs/math/defs/functor.qmd) and check that it is unital.

::: {.callout-note collapse=true appearance="minimal"}
## Solution
1. The individual 
   [natural transformations](/docs/math/defs/natural_transformation.qmd) 
   satsifying the 
   naturality condition makes the left and right squares commute, meaning the 
   whole diagram commutes: \begin{tikzcd} \pagecolor{white} F(c) \arrow[r, "\alpha_c"] \arrow[d, "F(f)"'] & G(c) \arrow[d,"G(f)"] \arrow[r, "\beta_{G(c)}"] & H(c) \arrow[d, "H(G(f))"] \\F(d) \arrow[r, "\alpha_d"']                   & G(d) \arrow[r,"\beta_{G(d)}"]                   & H(d)                     \end{tikzcd}
  - Thus the mapping from objects in $F$'s domain to morphisms in $H$'s codomain 
    is given by $G;\beta$.

2. Mapping each object to its own identity morphism will satisfy the naturality 
   condition (all four edges of the square become identity functions). This will 
   enforce unitality.
:::