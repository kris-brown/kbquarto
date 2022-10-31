Check that there is a SMP on the power set of $S$ ordered by subset relation. 
(The unit is $S$ and product is $\cap$)

::: {.callout-note collapse=true appearance="minimal"}
## Solution
- Monotonicity: $x_1 \subseteq y_1 \land x_2 \subseteq y_2 \implies x_1 \cap x_2 \subseteq y_1 \cap y_2$
  - This is true: if something is in both $x_1,x_2$, then it is in both 
    $y_1,y_2$, i.e. in their intersection.
- Unitality: $x \cap S = x = S \cap x$, since 
  $\forall x \in P(S): x \subseteq S$.
- Associativity and symmetry come from associativity and symmetry of $\cap$ 
  operator.
:::