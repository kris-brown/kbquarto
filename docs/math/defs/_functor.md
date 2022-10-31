A *functor* $\mathcal{C}\xrightarrow{F}\mathcal{D}$ between two 
[categories](/docs/math/defs/cat.qmd) requires the following data:

- For each object in $\mathcal{C}$ one specifies $F(c) \in Ob(\mathcal{D})$
- For each morphism $c_1\xrightarrow{f}c_2$ in $\mathcal{C}$, one specifies 
  $F(c_1)\xrightarrow{F(f)}F(c_2)$ in $\mathcal{D}$
- Furthermore, two properties must be satisfied:
    1. Identity morphisms are mapped to identity morphisms
    2. Composition is preserved: $F(f;g)=F(f);F(g)$
