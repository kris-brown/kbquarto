Let $P$ be a preorder. Monotone maps $P \rightarrow \mathbb{B}$ are in 
one-to-one correspondance with [upper sets](/docs/math/defs/upper_set.qmd) of $P$.

::: {.callout-note collapse=true appearance="minimal"}
## Proof
-  Let $P \xrightarrow{f} \mathbb{B}$ be a monotone map. The subset 
   $f^{-1}(true)$ is [upper set](/docs/math/defs/upper_set.qmd).
    - Suppose $p \in f^{-1}(true)$ and $p \leq q$.
    - Then $true = f(p) \leq f(q)$ because $f$ is monotonic.
    - But there is nothing strictly greater than $true$ in $\mathbb{B}$, so 
      $f(q) = true$ and therefore $q \in f^{-1}(true)$ too.
- Suppose $U \in U(P)$, and define $P\xrightarrow{f_U}\mathbb{B}$ such that 
  $f_U=true \iff p \in U$
    - Given there are only two values in $B$ and an arbitrary $p\leq q$, the 
      only way for this to *not* be monotone is for $f_U(p) \land \neg f_U(q)$ 
      but this defies the definition of an upper set.
- The two constructions are mutually inverse.

:::