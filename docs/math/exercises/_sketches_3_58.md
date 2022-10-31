Let $\mathcal{C}$ be an arbitrary [category](/docs/math/defs/cat.qmd) and 
$\mathcal{P}$ be a preorder thought of as a category. Are the following true?

1. For any two [functors](/docs/math/defs/functor.qmd) 
   $\mathcal{C}\xrightarrow{F,G}\mathcal{P}$, 
   there is at most one 
   [natural transformation](/docs/math/defs/natural_transformation.qmd) 
   $F \rightarrow G$
2. For any two functors $\mathcal{P}\xrightarrow{F,G}\mathcal{C}$, there is at 
   most one [natural transformation](/docs/math/defs/natural_transformation.qmd) 
   $F \rightarrow G$

::: {.callout-note collapse=true appearance="minimal"}
## Solution
1. This is true: there are no choices to be made for a 
   [natural transformation](/docs/math/defs/natural_transformation.qmd), given 
   that for each morphism 
   $c\rightarrow d$ in $\mathcal{C}$ we have to pick $\alpha_c$ to be **the** 
   morphism $F(c)\rightarrow G(c)$ and $\alpha_{d}$ to be **the} morphism 
   $F(d)\rightarrow G(d)$.
2. Counterexample: \begin{tikzcd} \pagecolor{white} \underline{\mathcal{C}}&\underline{\mathcal{P}}\\2&b\\1 \arrow[u, "x", bend left] \arrow[u, "y"', bend right] &a \arrow[u, "f"]\end{tikzcd}

    - let $F$ send $f\mapsto x,a\mapsto1,b\mapsto 2$ and $G$ maps everything to $2$
    - The naturality condition for $f$ leaves us with two choices for $\alpha_a$

\begin{tikzcd} \pagecolor{white} F(a)=1 \arrow[d, "F(f)=x"'] \arrow[r, "{\alpha_a \in \{x,y\}}"] & G(a)=2 \arrow[d, "G(f)=id_2"] \\F(y)=2 \arrow[r, "{\alpha_b=id_2}"'] & G(b)=2 \end{tikzcd}
:::