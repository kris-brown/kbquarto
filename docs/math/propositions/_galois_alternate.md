Suppose $P \overset{g}{\underset{f}{\leftrightarrows}} Q$ are 
[monotone maps](/docs/math/defs/monotone_map.qmd). The following are equivalent:

- $f$ and $g$ form a Galois connection where $f$ is left adjoint to $g$
- for every $p \in P, q \in Q$ we have:
    1. $p \leq g(f(p))$
    2. $f(g(q)) \leq q$

::: {.callout-note collapse=true appearance="minimal"}
## Proof
- Forward direction
    - Take any $p \in P$ and let $q = f(p) \in Q$
        - By reflexivity, we have in $Q$ that $f(p) \leq q$
        - By definition of Galois connection, we then have $p \leq g(q)$, so (1) 
          holds.
    - Take any $q \in Q$ and let $p = g(q) \in P$
        - By reflexivity, we have in $P$ that $p \leq g(q)$
        - By definition of Galois connection, we then have $f(p) \leq q$, so (2) 
          holds.
- Reverse direction
    - Want to show $f(p)\leq q \iff p \leq g(q)$
    - Suppose $f(p) \leq q$
        - Since $g$ is monotonic, $g(f(p)) \leq g(q)$
        - but, because (1), $p \leq g(f(p))$, therefore $p \leq g(q)$
    - Suppose $p \leq g(q)$
        - Since $f$ is monotonic, $f(p) \leq f(g(q))$
        - but, because (2), $f(g(q)) \leq q$, therefore $f(p) \leq q$
:::