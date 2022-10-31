Let $(P, \leq)$ be a [preorder](/docs/math/defs/preorder.qmd) and recall the 
[opposite preorder](/docs/math/defs/opposite_preorder.qmd).

1. Show that the set $\uparrow(p) := \{p' \in P\ |\ p \leq p'\}$ is an 
   [upper set](/docs/math/defs/upper_set.qmd) for any $p \in P$
2. Show that this construction defines a monotone map 
   $(P, \leq^{op}) \xrightarrow{\uparrow} U(P)$
3. Show that $p \leq p' \iff \uparrow(p') \subseteq \uparrow(p)$
4. Draw a picture of the map $\uparrow$ in the case where $P$ is the preorder 
   $(b\geq a \leq c)$.

::: {.callout-note collapse=true appearance="minimal"}
## Solution
This is the *Yoneda lemma for preorders* (i.e. up to equivalence, to know an 
element is the same as knowing its [upper set](/docs/math/defs/upper_set.qmd)).

1. This is basically the definition an upper set starting at some element.
2. Interpreting the meaning of the preorder in the domain and codomain of 
   $\uparrow$, this boils down to showing $p \leq p'$ implies 
   $\uparrow(p') \subseteq \uparrow(p)$
          - This is shown by noting that $p' \in \uparrow(p)$ and anything 
            'above' $p'$ (i.e. $\uparrow(p')$) will therefore be in $\uparrow(p)$.
3. Forward direction has been shown above
    - The other direction is shown just by noting that $p\prime$ must be an 
      element of $\uparrow(p\prime)$ and by the subset relation also in 
      $\uparrow(p')$, therefore $p \leq p'$.
4.  \begin{tikzcd} \pagecolor{white}
      B & & C &  & \{B\} & & \{C\} \\
      & A \arrow[lu] \arrow[ru] & {} \arrow[rr, "\uparrow", dotted, bend left] &  & {}    & \{A, B, C\} \arrow[ru] \arrow[lu] &
    \end{tikzcd}
:::