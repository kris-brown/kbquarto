Suppose we have the preorders 
$X:=\boxed{monoid\rightarrow category \leftarrow preorder}, Y:=\boxed{nothing \rightarrow thisBook}$

1. Draw the Hasse diagram for the preorder $X^{op} \times Y$
2. Write a profunctor $X \overset{\phi}\nrightarrow Y$
    - True means "my aunt can explain an $x$ given $y$"
    - Interpret the fact that the preimage of *true* is an upper 
      set in $X^{op}\times Y$

::: {.callout-note collapse=true appearance="minimal"}
## Solution
1.  \begin{tikzcd} \pagecolor{white}
              {(M,B)}                     & {(C,B)} \arrow[r] \arrow[l]                     & {(P,B)}                     \\
              {(M,\varnothing)} \arrow[u] & {(C,\varnothing)} \arrow[l] \arrow[r] \arrow[u] & {(P,\varnothing)} \arrow[u]
            \end{tikzcd}
2.  Let $\phi((M,B))=\phi((P,B))=True$ else $False$
  - The preimage of *true* being an upper set is a consequence of 
    [monotone maps](/docs/math/defs/monotone_map.qmd) to **Bool**. The domain 
    orders combinations by feasibility ($x\leq y$ means $x$ is easier than 
    $y$), and the preimage being an upper set says that if my aunt can 
    explain $x$ given $y$, then she can do something easier than $x$ given 
    $y$ and can explain $x$ with something with more explanatory 
    power than $y$.
:::
