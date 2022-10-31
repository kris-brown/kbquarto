
- Just as adjunctions give rise to closure operators, from every closure 
  operator we may construct an adjunction.
- Let $P \xrightarrow{j} P$ be a closure operator.
- Get a new preorder by looking at a subset of $P$ fixed by $j$.
    - $fix_j$ defined as $\{p \in P\ |\ j(p)\cong p\}$
- Define a \left adjoint $P \xrightarrow{j} fix_j$ and \right adjoint 
  $g:fix_j \hookrightarrow P$ as simply the inclusion function.
- To see that $j \dashv g$, we need to verify $j(p) \leq q \iff p \leq q$
    - Show $\rightarrow$:
        - Because $j$ is a closure operator, $p \leq j(p)$
        - $j(p) \leq q$ implies $p \leq q$ by transivity.
    - Show $\leftarrow$:
        - By monotonicity of $j$ we have $p \leq q$ implying $j(p) \leq j(q)$
        - $q$ is a fix point, so the RHS is congruent to $q$, giving 
          $j(p) \leq q$.