Suppose $\mathcal{V}:=(V,\leq,I,\otimes,\multimap)$ is a 
[closed symmetric monoidal preorder](/docs/math/defs/closed_smp.qmd)}.

a. For every $v \in V$ the [monotone map](/docs/math/defs/monoidal_monotone.qmd) 
   $(V, \leq) \xrightarrow{-\otimes v}(V,\leq)$ is left adjoint to 
   $(V, \leq)\ \xrightarrow{v \multimap -} (V,\leq)$
b. For any element $v \in V$ and a subset of elements $A \subseteq V$, if the 
   join $\bigvee A$ exists, then so does $\bigvee_{a \in A} v \otimes a$ and we 
   have $(v \otimes \bigvee A)\cong  \bigvee_{a \in A} v \otimes a$
c. $\forall v,w \in V: v \otimes (v \multimap w) \leq w$
d. $\forall v \in V: v \cong (I \multimap v)$
e. $\forall u,v,w \in V: (u \multimap v) \otimes (v \multimap w) \leq (u \multimap w)$


::: {.callout-note collapse=true appearance="minimal"}
## Proof

a. The [meaning](/docs/math/defs/galois_connection.qmd) of 
   $(- \otimes v) \dashv (v \multimap -)$ is exactly the condition of $\multimap$ in a closed symmetric monoidal preorder.
b. This follows from (1), using the fact that 
   [left adjoints preserve joins](/docs/math/propositions/adjoints_preserve.qmd).
c. This follows from (1) using the 
   [alternative characterization](/docs/math/propositions/galois_alternate.qmd) 
   of Galois connections.
  - Alternatively, start from definition of closed symmetric monoidal preorder 
    and substitute $v \multimap w$ for $a$, and note by reflexivity that  
    $(v \multimap w) \leq (v \multimap w)$
  - Then we obtain $(v \multimap w) \otimes v \leq w$ (by symmetry of 
    $\otimes$ we are done)

d. Since $v \otimes I = v \leq v$, then the closed condition means that 
   $v \leq I \multimap v$
  - For the other direction, we have 
    $I \multimap v = I \otimes (I \multimap v) \leq v$ by (c).

e. We need $u \otimes (u \multimap v) \otimes (v \multimap w) \leq w$
    - This follows from two applications of the third part of this proposition.
:::