Let $\mathcal{V}$ be a skeltal quantale. The category 
$\mathbf{Prof}_\mathcal{V}$ can be given the structure of a 
[compact closed category](/docs/math/defs/ccsmc.qmd), with the monoidal 
product given by the product of $\mathcal{V}$ categories.

::: {.callout-note collapse=true appearance="minimal"}
## Proof

- Monoidal product acts on objects:
    - $\mathcal{X} \times \mathcal{Y}((x,y),(x',y'))$ := $\mathcal{X}(x,x') \otimes \mathcal{Y}(y,y')$
- Monoidal product acts on morphisms:
    - $\phi \times \psi((x_1,y_1),(x_2,y_2))$ := 
      $\phi(x_1,x_2)\otimes\psi(y_1,y_2)$
- Monoidal unit is the $\mathcal{V}$ category $1$
- Duals in $\mathbf{Prof}_\mathcal{V}$ are just 
  [opposite categories](/docs/math/exercises/sketches_2_73.qmd)
    - For every $\mathcal{V}$ category, $\mathcal{X}$, its dual is 
      $\mathcal{X}^{op}$
    - The unit and counit look like identities
        - The unit is a $\mathcal{V}$ profunctor
          $1 \overset{\eta_\mathcal{X}}\nrightarrow \mathcal{X}^{op} \times \mathcal{X}$
        - Alternatively $1 \times \mathcal{X}^{op} \times \mathcal{X}\xrightarrow{\eta_\mathcal{X}}\mathcal{V}$
        - Defined by $\eta_\mathcal{X}(1,x,x'):=\mathcal{X}(x,x')$
        - Likewise for the co-unit: $\epsilon_\mathcal{X}(x,x',1):=\mathcal{X}(x,x')$
:::
