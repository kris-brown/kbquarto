Check if $(M,e,\star)$ is a commutative monoid then $(\mathbf{Disc}_M, =, e, \star)$ is a symmetric monoidal preorder, as described in the discrete SMP example above.

::: {.callout-note collapse=true appearance="minimal"}
## Solution
- Monotonicity is the only tricky one, and is addressed due to the triviality of the discrete preorder.
    - We can replace $x \leq y$ with $x \leq x$ because it is a discrete preorder.
    - $x_1 \leq x_1 \land x_2 \leq x_2 \implies x_1 \otimes x_2 \leq x_1 \otimes x_2$
    - $True \land True \implies True$ is vacuously true due to reflexivity of preorder.
- Unitality/associativity comes from unitality/associativity of monoid
- Symmetry comes from commutitivity of monoid.
:::