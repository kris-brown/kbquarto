Show there is a SMP on $(\mathbb{N}, \leq)$ where the monoidal product is 
$6*4=24$. What should the monoidal unit be?

::: {.callout-note collapse=true appearance="minimal"}
## Solution

- Let the monoidal product be the standard product for integers, with 1 as unit.
    - Monotonicity: $(x_1,x_2)\leq (y_1,y_2) \implies x_1x_2 \leq y_1y_2$
    - Unitality: $1*x_1=x_1=x_1*1$
    - Associativity: $a*(b*c)=(a*b)*c$
    - Symmetry: $a*b=b*a$
:::