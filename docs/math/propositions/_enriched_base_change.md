Let $\mathcal{V}\xrightarrow{f}\mathcal{W}$ be a 
[monoidal monotone map](/docs/math/defs/monoidal_monotone.qmd). Given a $\mathcal{V}$ 
[category](/docs/math/defs/vcat.qmd), called $\mathcal{C}$, one can construct an associated 
$\mathcal{W}$ category, let's call it $\mathcal{C}_f$

::: {.callout-note collapse=true appearance="minimal"}
## Proof

- Take the same objects: $Ob(\mathcal{C}_f):=Ob(\mathcal{C})$
- $\mathcal{C}_f(a,b) := f(\mathcal{C}(a,b))$
- Check this obeys the definition of an enriched category:
  - Condition on the monoidal unit:
    - $I_W \leq f(I_V)$ --- from the first condition of a monoidal monotone map.
    - $\forall c \in Ob(\mathcal{C}): I_V \leq \mathcal{C}(c,c)$ --- first 
      condition of an enriched category, which $\mathcal{C}$ is
    - $\forall c \in Ob(\mathcal{C}):f(I_V) \leq f(\mathcal{C}(c,c))$ --- 
      monotone map property
    - $\forall c \in Ob(\mathcal{C}):f(I_V) \leq \mathcal{C}_f(c,c)$ --- 
      definition of $\mathcal{C}_f$
    - $\forall c \in Ob(C_f): I_W \leq C_f(c,c)$ --- transitivity, using 1 and 
      4, noting $Ob(\mathcal{C})=Ob(\mathcal{C}_f)$
  - Condition on monoidal product:
    - $\mathcal{C}_f(c,d) \otimes_W \mathcal{C}_f(d,e) = f(\mathcal{C}(c,d)) \otimes_W f(\mathcal{C}(d,e))$ --- definition of $\mathcal{C}_f$
    - $f(\mathcal{C}(c,d)) \otimes_W f(\mathcal{C}(d,e)) \leq f(\mathcal{C}(c,d) \otimes_V \mathcal{C}(d,e))$  --- second condition of a monoidal monotone map
    - $\mathcal{C}(c,d) \otimes_V \mathcal{C}(d,e) \leq \mathcal{C}(c,e)$ --- 
      Second condition of an enriched category
    - $f(\mathcal{C}(c,d) \otimes_V \mathcal{C}(d,e)) \leq f(\mathcal{C}(c,e)$ --- 
      monotone map property
    - $f(\mathcal{C}(c,d) \otimes_V \mathcal{C}(d,e)) \leq \mathcal{C}_f(c,e)$ --- 
      definition of $\mathcal{C}_f$
    - $\mathcal{C}_f(c,d) \otimes_W \mathcal{C}_f(d,e) \leq \mathcal{C}_f(c,e)$ --- 
      transitivity, 1,2 and 5
:::