  Adjoint functor theorem for preorders

- Suppose $Q$ is a preorder that has all meets and $P$ is any preorder.
    - A [monotone map](/docs/math/defs/monotone_map.qmd) $Q \xrightarrow{g} P$ preserves meets 
      iff it is a right adjoint.
- Likewise, suppose $P$ has all joins and $Q$ is any preorder:
    - A [monotone map](/docs/math/defs/monotone_map.qmd) $P \xrightarrow{f} Q$ preserves joins
     iff it is a left adjoint.
- Proved the reverse direction [here](/docs/math/propositions/adjoints_preserve.qmd).

::: {.callout-note collapse=true appearance="minimal"}
## Proof

- Given a right adjoint, construct the left adjoint by:
    - $f(p) := \bigwedge\{q \in Q\ |\ p \leq g(q)\}$
    - First need to show this is monotone:
        - If $p \leq p'$, the relationship between the joined sets of 
          $f(p)$ and $f(p')$ is that the latter is a subset of the former.
        - By [this](/docs/math/propositions/adjoints_preserve.qmd) we infer that $f(p) \leq f(p')$.
    - Then need to show that it is satisfies the left adjoint property:
        - Show that $p_0 \leq g(f(p_0))$
            -  $p_0 \leq \bigwedge \{g(q)\ |\ p_0 \leq g(q)\} \cong g(\bigwedge\{q\ |\ p_0 \leq g(q)\}) = g(f(p_0))$
            - The first inequality comes from the fact that the meet of the set 
              (of which $p_0$ is a lower bound) is a greatest lower bound.
            - The congruence comes from the fact that right adjoints preserve 
              meets.
        - Show that $f(g(q_0)) \leq q_0$
            - $f(g(q_0)) = \bigwedge\{q\ |\ g(q_0) \leq g(q)\} \leq \bigwedge \{q_0\} = q_0$
            - The first inequality comes from [here](/docs/math/propositions/adjoints_preserve.qmd) since 
              $\{q_0\}$ is a subset of the first set.
            - The second equality is a property of the meet of single element 
              sets.
- Proof of a left adjoint construction (assuming it preserves joins) is dual.
:::