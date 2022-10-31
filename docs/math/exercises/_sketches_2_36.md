- Let $Prop^\mathbb{N}$ be the set of all mathematical statements one can make about a natural number.
- Examples:
    - $n$ is a prime
    - $n$ = 2
    - $n \geq 11$
- We say $P \leq Q$ if for all $n \in \mathbb{N}$, $P(n) \implies Q(n)$
- Define a monoidal unit and product on $(Prop^\mathbb{N}, \leq)$.

::: {.callout-note collapse=true appearance="minimal"}
## Solution

- Let the unit be $\lambda x. true$ and product be $\land$
- montonicity: $P_1(x)\leq Q_1(x) \land P_2(x) \leq Q_2(x) \implies (P_1 \land P_2)(x) \leq (Q_1 \land Q_2)(x)$
    - If the $P$ properties hold for a given number, then each of the $Q$ properties hold
- unitality, associativity, symmetry: same as $\mathbf{Bool}$
:::