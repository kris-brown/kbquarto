A *natural transformation* $F \overset{a}\Rightarrow G$ between two 
[functors](/docs/math/defs/functor.qmd) (going from 
$\mathcal{C}$ to $\mathcal{D}$).

- For each object $c \in \mathcal{C}$, one specifies a morphism 
  $F(c)\xrightarrow{\alpha_c}G(c)$ in $\mathcal{D}$ called the *c-component of* 
  $\alpha$
- These components must satisfy the *naturality condition}: for each morphism 
  $c \xrightarrow{f} d$ in $\mathcal{C}$ we need $F(f);\alpha_d=\alpha_c;G(f)$
- AKA this diagram should commute: \begin{tikzcd} \pagecolor{white} F(c) \arrow[r, "\alpha_c"] \arrow[d, "F(f)"'] & G(c)\arrow[d, "G(f)"] \\F(d) \arrow[r, "\alpha_d"']& G(d)\end{tikzcd}