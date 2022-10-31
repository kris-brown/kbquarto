
1. Justify all steps the proof of the 
   [unitality of unit profunctors](/docs/math/propositions/prof_unitality.qmd).
2. In the case of $\mathcal{V}=\mathbf{Bool}$ show each step in the 
   forward direction is actually an equality.

::: {.callout-note collapse=true appearance="minimal"}
## Solution
1. Done, see the [proof](/docs/math/propositions/prof_unitality.qmd)
2.
- $\forall p: P(p,p)=true$ for a **Bool**-enriched category, because that is 
  the only option for $I=true\leq P(p,p)$
    - $true \land x = x$
- If $\phi(p,q)$:
    - then at least one element of the set being joined over is true (where 
      $p=p'$ such that $P(p,p')\land \phi(p',q) = true$), and the least 
      upper bound of such a set is $true$
- Else:
    - Then every element of that set is $false$ such that the join is also 
      $false$.
        - If $p\leq p'$, it fails because of the second conjunct (consider 
          the constraint on profunctors: we are demanding equal or more 
          resources than something we know fails)
        - If $p \not \leq p'$, it fails because of the first conjunct.
          In a **Bool**-category $P$, $P(a,b)$ iff $a \leq b$.
:::