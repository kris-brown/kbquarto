To specify a category, we need: 
- a collection of objects, $Ob(\mathcal{C})$
- For every two objects $c$ and $d$, one specifies a set $\mathcal{C}(c,d)$ 
  called *morphisms} from $c$ to $d$
  - This set is called the *hom-set} and *morphism* is a shorthand for 
    *homomorphism*
- For every object $c$ one specifies a morphism $id_c \in \mathcal{C}(c,c)$ 
  called the *identity morphism*
- For every pair of morphisms $c \xrightarrow{f} d$ and $d \xrightarrow{g} e$, 
  one specifies a morphism $c \xrightarrow{f;g}e$ called the *composite* of $f$ 
  and $g$
- Furthermore, these must satisfy two conditions:
    1. unitality: composing with identities does not change anything
    2. associativity: $(f;g);h = f;(g;h)$