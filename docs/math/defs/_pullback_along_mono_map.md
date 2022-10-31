To construct a pullback along a monotone map $P \xrightarrow{f} Q$:

- We take the preimage of $f$, but not for a single element of $Q$ but rather 
  an [upper set](/docs/math/defs/upper_set.qmd) of $Q$.
- \begin{tikzcd} \pagecolor{white} {(P, \leq_P)} \arrow[d, "f^*(u) \in U(P)"', dashed] \arrow[r, "f"] & {(Q, \leq_Q)} \arrow[ld, "u \in U(Q)"] \\ \mathbb{B}ool& \end{tikzcd}
- Noting that [upper sets are monotone maps to $\mathbb{B}$](/docs/math/propositions/monotones_to_bool.qmd), 
  it follows that the result of a pullback is an upper set in $P$ follows from 
  the fact that composition preserves monotonicity.
- Therefore the type of the pullback is $U(Q) \xrightarrow{f^*} U(P)$
