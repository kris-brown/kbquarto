
Let $\mathcal{V}=(V,\leq,I,\otimes,\multimap)$ be a quantale. Prove:

1. The identity law
    - For all $\mathcal{V}$ matrices $X\times Y\xrightarrow{M}V$, one has $I_X * M = M$

2. The associative law
    - For any matrices $W \times X \xrightarrow{M} V, X \times Y \xrightarrow{N} V, Y \times Z \xrightarrow{P} V$, one has $(M*N)*P=M*(N*P)$


::: {.callout-note collapse=true appearance="minimal"}
## Solution
1.
  - $\forall v \in \mathcal{V}$, we have $0 \otimes v \cong 0$.
    - $0 \otimes v$
    - $\cong v \otimes 0$ -- symmetry
    - $= v \otimes \bigvee_{a \in \varnothing} a$ -- definition of $0$
    - $\cong \bigvee_{a \in \varnothing} v \otimes a$ --  $-\otimes x$ preserves joins b/c it is left adjoint
    - $= 0$ -- definition of 0
  - Plug this into definition of matrix multiplication
    - $I_X * M(x,y)$
    - $= \bigvee_{x'}I_x(x,x')\otimes M(x',y)$ -- definition of matrix multiplication in a quantale
    - $=(I_x(x,x)\otimes M(x,y))\vee(\bigvee_{x'\ne x}I_x(x,x')\otimes M(x',y))$ -- split join into two cases
    - $=(I\otimes M(x,y))\vee(\bigvee_{x'\ne x}0\otimes M(x',y))$ -- Definition of identity matrix
    - $=M(x,y)\vee 0$ --  join of a singleton set
    - $=M(x,y)$ -- Zero is the least element in $\mathcal{V}$

2.
    - Need to show $\underset{y \in Y}\bigvee (\underset{x\in X}\bigvee M(w,x)\otimes N(x,y))\otimes P(y,z)$ is the same as $\underset{x \in X}\bigvee M(w,x)\otimes(\underset{y \in Y}\bigvee N(x,y) \otimes P(y,z))$ for all $w \in W,z \in Z$
    - The associativity of $\otimes$ and the fact it preserves joins b/c it is left adjoint lets us shift the symbols around appropriately.
:::