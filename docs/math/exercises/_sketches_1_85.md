Let $p \in P$ be an element in a [preorder](/docs/math/defs/preorder.qmd). Consider
$A = \{p\}$:

1. Show that $\wedge A \cong p$
2. Show that if $P$ is a partial order, then $\wedge A = p$
3. Are the analogous facts true when $\wedge$ is replaced by $\vee$?

::: {.callout-note collapse=true appearance="minimal"}
## Solution
1.
    - The first condition of the meet gives us that $\wedge A \leq p$.
    - The second condition is that $\forall q \in P: q \leq p \implies q \leq \wedge A$.
        - Substituting $p$ in for $q$, the antecedent holds such that we get 
          $p \leq \wedge A$.
    - Therefore $p \cong \wedge A$
1. The difference between a partial order and a preorder is that congruent
   elements are equal, so we directly get that $p = \wedge A$
2. Yes, the argument is perfectly symmetric.
:::