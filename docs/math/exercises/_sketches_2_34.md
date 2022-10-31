- Consider the preorder defined by the Hasse diagram $\boxed{no \rightarrow maybe \rightarrow yes}$
- Consider a potential monoidal structure with $yes$ as the unit and $min$ as the product.
- Fill out a reasonable definition of $min$ and check that it satisfies the conditions.

::: {.callout-note collapse=true appearance="minimal"}
## Solution

| $min$ | no | maybe | yes   |
|-------|---|--------|-------|
| **no**    | no | no    | no    |
| **maybe** | no | maybe | maybe |
| **yes**   | no | maybe | yes   |


- Monotonicity: $x_1 \leq y_1 \land x_2 \leq y_2 \implies x_1x_2 \leq y_1y_2$
    -  Suppose without loss of generality that $x_1\leq x_2$
    - then $x_1x_2=x_1$ and $y_1y_2 = y_1$ or $y_2$
    - In the first case, we know this is true because we assumed $x_1 \leq y_1$
    - In the second case, we know it from transitivity: $x_1 \leq x_2\leq y_2$
- Unitality: $min(x,yes)=x$
- Associativity: probably
- Symmetry: table is symmetric.
:::