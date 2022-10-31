
- Need a formula for composing two 
  [feasibility relations](/docs/math/defs/feasibility_relation.qmd) in series.
- Suppose $P,Q,R$ are cities (preorders) and there are bridges (hence, 
  [feasibility matrices](/docs/math/exercises/sketches_4_12.qmd)).
- \begin{tikzcd} \pagecolor{white}
            & N \arrow[rrrrdd, blue, dotted, bend left]                      &                                             &                                             & e                                                       &   &   \\
            W \arrow[ru] \arrow[rrrd, blue,dotted] &                                                          & E \arrow[lu] \arrow[rru, blue, dotted, bend left] & d \arrow[ru] \arrow[rrr, red,dotted, bend left] &                                                         &   & x \arrow[d] \\
            & S \arrow[lu] \arrow[ru] \arrow[rrrd, blue, dotted, bend right] &                                             & b \arrow[u]                                 &                                                         & c & y \\
            &                                                          &                                             &                                             & a \arrow[ru] \arrow[lu] \arrow[rru, red, dotted, bend right] &   &
          \end{tikzcd}


- The [feasibility matrices](/docs/math/exercises/sketches_4_12.qmd) are:

| $\textcolor{blue}{\phi}$ | a | b | c | d | e |
|--|---|--|--|--|---|
| N                        | T | F | T | F | F |
| E                        | T | F | T | F | T |
| W                        | T | T | T | T | F |
| S                        | T | T | T | T | T |


| $\textcolor{red}{\psi}$ | x | y |
|----|--|--|
| a                       | F | T |
| b                       | T | T |
| c                       | F | T |
| d                       | T | T |
| e                       | F | F |

- Feasibility from $P$ to $R$ means there is a way-point in Q which is both
   reachable from $p \in P$ and can reach $r \in R$.
- Composition is a union 
  $(\phi;\psi)(p,r):= \bigvee_Q \phi(p,q)\land \psi(q,r)$.
- But this is tantamount to [matrix multiplication](/docs/math/defs/quantale_matrix.qmd) 
  which gives us the result matrix:


|$\phi;\psi$ | x |y |
|---|--|--|
|N           | F |T |
|E           | F |T |
|W           | T |T |
|S           | T |T |
