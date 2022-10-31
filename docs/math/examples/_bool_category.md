Consider the following [preorder](/docs/math/defs/preorder.qmd): \begin{tikzcd} \pagecolor{white} & t & \\ & s \arrow[u] & \\q \arrow[ru] & & r \arrow[lu] \\ & p \arrow[ru] \arrow[lu] & \end{tikzcd}

As a **Bool**-category, the objects are $Ob(\mathcal{X})=\{p,q,r,s,t\}$.

- For every pair, we need an element of **Bool**, so make it true if $x\leq y$
- $true$ is the monoidal unit of **Bool**, and this obeys the two constraints of a $\mathcal{V}$ category.

We can represent the [binary relation](/docs/math/defs/relation.qmd) (hom-object) with a table:

| $\leq$ | p | q | r | s | t |
|--------|---|---|---|---|---|
| p      | T | T | T | T | T |
| q      | F | T | F | T | T |
| r      | F | F | T | T | T |
| s      | F | F | F | T | T |
| t      | F | F | F | F | T |