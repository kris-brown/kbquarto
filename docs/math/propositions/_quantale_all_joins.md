Suppose $\mathcal{V}=(V,\leq,I,\otimes)$ is a 
[symmetric monoidal preorder](/docs/math/defs/smp.qmd) that has all 
[joins](/docs/math/defs/join.qmd).

- Then $\mathcal{V}$ is closed, i.e. has a $\multimap$ operation and hence is a 
  quantale, iff $\otimes$ distributes over joins
- i.e. if [SMP currying Eq #2](/docs/math/propositions/smp_curry.qmd) holds:
  $(v \otimes \bigvee A)\cong  \bigvee_{a \in A} v \otimes a$.

::: {.callout-note collapse=true appearance="minimal"}
## Proof

- We proved one direction in 
  [SMP currying](/docs/math/propositions/smp_curry.qmd).
- We need to show that 
  $(v \otimes \bigvee A)\cong  \bigvee_{a \in A} v \otimes a$ (and all joins 
  existing) implies that there exists a $\multimap$ operation that satisfies 
  the closed property: $\forall a,v,w \in V: (a \otimes v) \leq w$ iff 
  $a \leq (v \multimap w)$.
- The 
  [adjoint functor theorem for preorders](/docs/math/propositions/adjoint_functor_theorem_preorders.qmd) 
  states that [monotone maps](/docs/math/defs/monotone_map.qmd) preserve joins 
  iff they're left adjoint, so $V \xrightarrow{-\otimes v} V$ must have a right 
  adjoint $g$, which, being a 
  [Galois connection](/docs/math/defs/galois_connection.qmd), will satisfy the
  property $(a \otimes v) \leq w \iff a \leq g(w)$ (this is the monoidal closed 
  property).
- Let's rename $g \equiv v \multimap -$. The adjoint functor theorem even gives 
  us a construction for the right adjoint, namely: 
  $v \multimap w:=\bigvee\{a \in V\ |\ a \otimes v \leq w\}$.
:::