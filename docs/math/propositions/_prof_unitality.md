The [unit profunctor](/docs/math/defs/unit_prof.qmd) is unital, i.e. for 
any [profunctor](/docs/math/defs/vprof.qmd) 
$P \overset{\phi}\nrightarrow Q$:  $U_P;\phi = \phi = \phi; U_Q$

::: {.callout-note collapse=true appearance="minimal"}
## Proof
- Due to skeletality, we need to show for all inputs that 
  $\phi \leq U_P;\phi$ and $U_P;\phi \leq \phi$ (the second equality to 
  show is done similarly).
- Forward direction
    - $\phi(p,q) = I \otimes \phi(p,q)$
        - due to unitality of $I$ in a 
          [symmetric monoidal preorder](/docs/math/defs/smp.qmd).
    - $\leq P(p,p) \otimes \phi(p,q)$
        - This is because $\forall p \in P:$ $I \leq P(p,p)$ (a 
          constraint of a $\mathcal{V}$ [category](/docs/math/defs/vcat.qmd)), 
          the reflexivity of $\leq$ for $\phi(p,q)$, and the 
          [monotonicity](/docs/math/defs/smp.qmd) of $\otimes$.
    - $\leq \underset{p' \in P}\bigvee(P(p,p') \otimes \phi(p',q))$
        - The join is a least upper bound, and the LHS is an element of the 
          set being joined over (the case where $p=p'$).
    - $= (U_P;\phi)(p,q)$
        - This is the 
          [profunctor composition](/docs/math/defs/vprof_comp.qmd) formula, 
          subtituting in the [unit profunctor](/docs/math/defs/unit_prof.qmd) 
          definition explicitly.
- Reverse direction
    - Need to show 
      $\underset{p' \in P}\bigvee(P(p,p')\otimes \phi(p',q)) \leq \phi(p,q)$
    - Show that this property holds for each $p' \in P$ - given the join is a 
      least upper bound, it will also be less than or equal to $\phi(p,q)$
    - $P(p,p')\otimes\phi(p',q) = P(p,p')\otimes\phi(p',q)\otimes I$
        - due to unitality of $I$ in a 
          [symmetric monoidal preorder](/docs/math/defs/smp.qmd).
    - $\leq P(p,p')\otimes \phi(p',q)\otimes Q(q,q)$
        - $\forall p:$ $I \leq P(p,p)$ (a constraint of a 
          $\mathcal{V}$ [category](/docs/math/defs/vcat.qmd)) and the 
          [monotonicity](/docs/math/defs/smp.qmd) of $\otimes$.
    - $\leq\phi(p,q)$
        - This was shown in [Exercise 4.9](/docs/math/exercises/sketches_4_9.qmd)
:::
