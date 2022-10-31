The symmetric monoidal preorder $\mathbf{Cost}:=([0,\infty],\geq,0,+)$ is 
[monoidal closed](/docs/math/defs/closed_smp.qmd).

- For any $x,y \in [0,\infty]$, define $x \multimap y := max(0,y-x)$
- Then, for any $a,x,y$, we have $a+x\geq y$ iff $a \geq y-x$ iff 
  $max(0,a)\geq max(0,y-x)$ iff $a \geq (x \multimap y)$
- We can use this to define a notion of subtraction in **Cost**.