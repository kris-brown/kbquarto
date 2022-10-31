A *matrix with entries in* $\mathcal{V}$, where 
$\mathcal{V}=(V, \leq, \otimes, I)$ is a 
[quantale](/docs/math/defs/quantale.qmd), also called a $\mathcal{V}$ *matrix*,
needs two sets, and function $X \times Y \xrightarrow{M} V$. Call $M(x,y)$ the 
(x,y)th entry.
- We can multiply $X \times Y \xrightarrow{M} V$ and 
  $Y \times Z \xrightarrow{N} V$ to get a new $\mathcal{V}$ matrix 
  $X \times Z \xrightarrow{M*N} V$.
    - $(M*N)(x,z)(x,z)$ defined as $\bigvee_y\ M(x,y)\otimes N(y,z)$
    - Note that this is similar to the standard matrix multiplication, with 
      $\bigvee \mapsto \Sigma, \otimes \mapsto *$