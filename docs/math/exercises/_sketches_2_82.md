
Prove that a [symmetric monoidal preorder](/docs/math/defs/smp.qmd) is closed 
iff, given any $v \in V$, the map $V \xrightarrow{(-\otimes v)}V$ given by 
multiply with $v$ has a right adjoint.  We write this adjoint 
$V \xrightarrow{(v \multimap -)}V$:

1. Show that $V \xrightarrow{(-\otimes v)}V$ is 
   [monotone](/docs/math/defs/monotone_map.qmd).
2. Supposing that $\mathcal{V}$ is closed, show that 
   $\forall v,w \in V: ((v \multimap w)\otimes v) \leq w$
3. Show that $(v \multimap -)$ is monotone.
4. Conclude that a [symmetric monoidal preorder](/docs/math/defs/smp.qmd) is 
   closed iff the monotone map $(- \otimes v)$ has a 
   [right adjoint](/docs/math/defs/galois_connection.qmd).

::: {.callout-note collapse=true appearance="minimal"}
## Solution
1.
    - Given the monotonicity constraint of $\otimes$
    - And reflexivity: $v \leq v$, we have:
    - $x_1 \leq y_1$ implies that $(x_1 \otimes v) \leq (y_1 \otimes v)$
2. Substitute $v \multimap w$ for $a$ into the closed property equation, to get 
   $((v \multimap w)\otimes v) \leq w \iff v \multimap w \leq v \multimap w$ 
   (the RHS is true by reflexivity, so the LHS must be true).
3. Need to show: if we assume $x \leq y$ then we can conclude
   $(v \multimap x) \leq (v \multimap y)$
    - From the previous part, we have $(v \multimap x) \otimes v \leq x$ and 
      $(v \multimap y) \otimes v \leq y$
    - Assuming the antecedant $x \leq y$, and given transitivity, we have 
      $(v \multimap x) \otimes v \leq (v \multimap y) \otimes v$
    - Because the $\otimes$ operation must be monotonic, the consequent follows.
4. A Galois connection requires that both maps be monotone and that they satisfy 
   $f(p)\leq q$ iff $p \leq g(q)$. This is the relation captured by the closed 
   property equation, and both maps were shown to be monotone.
:::