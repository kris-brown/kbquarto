- Think of the preorder of arithmatic expressions such as $12, 4+2+4, 9*(2+3)$, 
  where the $\leq$ operators denotes whether an expression can be simplified to 
  another.
- A computer program $j$ that evaluates expressions is a monotonic function on 
  the preorder to itself (if you can reduce $x$ to $y$, then $j(x)$ should be 
  able to be rewritten as $j(y)$.
- The requirements of closure operator say that $j$ should be a simplification, 
  and that trying to reduce an expression which has already been reduced will do 
  nothing further.