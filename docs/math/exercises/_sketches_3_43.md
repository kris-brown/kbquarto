
1. Given a category $\mathcal{C}$, show that there exists a [functor](/docs/math/defs/functor.qmd) 
   $id_\mathcal{C}$ known as the identity [functor](/docs/math/defs/functor.qmd) on $\mathcal{C}$
2. Show that given $\mathcal{C}\xrightarrow{F}\mathcal{D}$ and
   $\mathcal{D}\xrightarrow{G}\mathcal{E}$ we can define a new 
   [functor](/docs/math/defs/functor.qmd) $\mathcal{C}\xrightarrow{F;G}\mathcal{E}$ just by 
   composing functions.
3. Show that there is a category, let's call it **Cat** where the objects are 
   [categories](/docs/math/defs/cat.qmd), morphisms are functors, and identities/composition 
   are given as above.

::: {.callout-note collapse=true appearance="minimal"}
## Solution
1.  Mapping objects and morphisms to themselves satsifies the 
    [functor](/docs/math/defs/functor.qmd) constraints of preserving identities and composition.
2. If $F,G$ both independently preserve identity arrows, then composition of 
   these will also preserve this. Also $G(F(f;g))=G(F(f);F(g))=G(F(f));G(F(g))$ 
   using the independent facts that $F,G$ each preserve composition.
3. Composition of identity functions do not change anything, so the identity 
   [functor](/docs/math/defs/functor.qmd) (defined by identity function) will obey unitality. 
   Because function composition is associative and functor composition is 
   defined by this, we also satisfy that constraint.
:::