Let $(P,\leq)$ be a preorder. It has all [joins](/docs/math/defs/join.qmd) iff 
it has all [meets](/docs/math/defs/meet.qmd).

::: {.callout-note collapse=true appearance="minimal"}
## Proof

- Meets and joins are dual, so it suffices to prove one of the directions (the 
  [opposite category](/docs/math/exercises/sketches_2_73.qmd) shows that having 
  all meets having all joins, 
  if we are able to prove that having all joins means having all meets in the 
  original preorder).
- Suppose there are all joins and $A \subseteq P$ is a subset for which we want 
  the meet.
- Consider the set $M_A := \{p \in P\ |\ \forall a \in A: p \leq a \}$ 
  (everything below all of $A$ - these are candidates for the meet of $A$)
- The first condition for the meet is satisfied by all. We get the actual meet 
  by taking $\bigvee M_A$ which is guaranteed to exist. Because this element is 
  greater than or equal to all elements that are $\leq A$, it satisfies the 
  second condition for the meet.
:::