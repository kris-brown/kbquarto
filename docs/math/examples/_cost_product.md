- Let $\mathcal{X}$ and $\mathcal{Y}$ be the 
  [Lawvere metric spaces](/docs/math/defs/lawvere_metric_space.qmd) (i.e. **Cost** 
  categories) defined by the following weighted graphs.
- \begin{tikzcd} \pagecolor{white} \mathcal{X}:= & A \arrow[r, "2"]            & B \arrow[r, "3"]            & C \\\mathcal{Y}:= & P \arrow[r, "5", bend left] & Q \arrow[l, "8", bend left] &  \end{tikzcd}
- The product can be represented by the following graph: \begin{tikzcd} \pagecolor{white} {(A,P)} \arrow[r, "2"] \arrow[d, "5"', bend right]  & {(B,P)} \arrow[r, "3"] \arrow[d, "5"', bend right]  & {(C,p)} \arrow[d, "5"', bend right] \\{(A,Q)} \arrow[r, "2"'] \arrow[u, "8"', bend right] & {(B,Q)} \arrow[r, "3"'] \arrow[u, "8"', bend right] & {(C,Q)} \arrow[u, "8"', bend right]\end{tikzcd}
- The distance between any two points $(x,y),(x',y')$ is given by the sum $d_X(x,x)+d_Y(y,y)$.

- We can also consider the 
- [**Cost**-categories](/docs/math/examples/cost_smp.qmd) as matrices

| $\mathcal{X}$ | A        | B        | C |
|---|---|--|--|
| **A**             | 0        | 2        | 5 |
| **B**             | $\infty$ | 0        | 3 |
| **C**             | $\infty$ | $\infty$ | 0 |


|$\mathcal{Y}$ | P | Q |
|----|---|
|**P**             | 0 | 5 |
|**Q**             | 8 | 0 |

|$\mathcal{X}\times\mathcal{Y}$ | (A,P)    | (B,P)    | (C,P) | (A,Q)    | (B,Q)    | (C,Q) |
| -----|---|---|---|---|---|---|
|**(A,P)**                          | 0        | 2        | 5     | 5        | 7        | 10    |
|**(B,P)**                          | $\infty$ | 0        | 3     | $\infty$ | 5        | 8     |
|**(C,P)**                          | $\infty$ | $\infty$ | 0     | $\infty$ | $\infty$ | 5     |
|**(A,Q)**                          | 8        | 10       | 13    | 0        | 2        | 5     |
|**(B,Q)**                          | $\infty$ | 8        | 11    | $\infty$ | 0        | 3     |
|**(C,Q)**                          | $\infty$ | $\infty$ | 8     | $\infty$ | $\infty$ | 0     |

- Can view this as a 2x2 grid of 3x3 blocks: each is a 
  $\mathcal{X}$ matrix shifted by $\mathcal{Y}$.