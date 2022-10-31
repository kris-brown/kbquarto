Show that a $\mathcal{V}$ [profunctor](/docs/math/defs/vprof.qmd) is the same 
as a function $Ob(\mathcal{X})\times Ob(\mathcal{Y}) \xrightarrow{\phi} V$ 
such that, $\forall x,x' \in \mathcal{X}, y,y' \in \mathcal{Y}$, the 
following holds in $\mathcal{V}$:

$$\mathcal{X}(x',x)\otimes \phi(x,y) \otimes \mathcal{Y}(y,y') \leq \phi(x',y')$$

::: {.callout-note collapse=true appearance="minimal"}
## Solution
- A $\mathcal{V}$ profunctor must be a function satisfying the following 
  constraint, according to the $\mathcal{V}$ functor 
  [definition](/docs/math/defs/v_functor.qmd):
    - $Z((x,y),(x',y')) \leq$ $\mathcal{V}(\phi((x,y)),\phi((x',y')))$
    - where $Z = \mathcal{X}^{op}\times \mathcal{Y}$
    - Unpacking the definition of a product
      $\mathcal{V}$ category, we obtain
      $\mathcal{X}^{op}(x,x') \otimes \mathcal{Y}(y,y') \leq \mathcal{V}(\phi((x,y)),\phi((x',y')))$
- And applying opposite category definition: 
  $\mathcal{X}(x',x) \otimes \mathcal{Y}(y,y') \leq \mathcal{V}(\phi((x,y)),\phi((x',y')))$
- Noting the definition of $\multimap$ for a $\mathcal{V}$ category 
  [enriched in itself](/docs/math/defs/self_enriched.qmd):
    $\mathcal{V}(v,w)=v\multimap w$, so now we have: 
    $\mathcal{X}(x',x) \otimes \mathcal{Y}(y,y') \leq \phi((x,y)) \multimap \phi((x',y'))$
- From the constraint of a 
  [hom-element of a symmetric monoidal preorder](/docs/math/defs/closed_smp.qmd) 
  $\mathcal{V}$, i.e. $a \leq (v \multimap w)$ iff $(a \otimes v) \leq w$, 
  we see that the first case pattern matches with:
    - $a \mapsto$ $\mathcal{X}(x',x) \otimes \mathcal{Y}(y,y')$
    - $v \mapsto$ $\phi((x,y))$
    - $w \mapsto$ $\phi((x',y'))$
- So using the iff we can rewrite as $(a \otimes v) \leq w$, and use the 
  commutativity of $\otimes$ to obtain the desired expression.


:::