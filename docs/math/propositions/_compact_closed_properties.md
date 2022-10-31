
If $\mathcal{C}$ is a [compact closed category](/docs/math/defs/ccsmc.qmd), then:

- $\mathcal{C}$ is [monoidal closed](/docs/math/defs/closed_smp.qmd)
- the [dual](/docs/math/defs/dual.qmd) of $c$ is unique up to isomorphism
- $c \cong (c^*)^*$


::: {.callout-note collapse=true appearance="minimal"}
## Proof
Not really proven (TODO), but: $c \multimap d$ is given by $c^* \otimes d$

The natural isomorphism $\mathcal{C}(b \otimes c, d)\cong \mathcal{C}(b,c \multimap d)$ is given by precomposing with $id_b \otimes \eta_c$
:::