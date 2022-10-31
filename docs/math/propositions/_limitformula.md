
- Let $\mathcal{J}$ be a [category](/docs/math/defs/cat.qmd) presented by the finite graph $(\{v_1,...,v_n\},A,s,t)$ with some equations.
- Let $\mathcal{J}\xrightarrow{D}\mathbf{Set}$ be some set-valued [functor](/docs/math/defs/functor.qmd).
- The set $\underset{\mathcal{J}}{lim}D := \{(d_1,...,d_n)\ |\ \forall i: d_i \in D(v_i)\ \text{and}\ \forall v_i\xrightarrow{a}v_j \in A: D(a)(d_i)=d_j\}$
    - ... together with projection maps $lim_\mathcal{J}D \xrightarrow{p_i}D(v_i)$ given by $p_i(d_1,...,d_n):=d_i$
- ... is a [limit](/docs/math/defs/limit.qmd) of $D$.


::: {.callout-note collapse=true appearance="minimal"}
## Proof
[TODO]{style="color: red; background-color: yellow;"} not yet proven
:::