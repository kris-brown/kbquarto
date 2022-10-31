A [category](/docs/math/defs/vcat.qmd) $\mathcal{V}$ that is *enriched* in itself.

<div id="self-enriched"/></div>
-  For every $v,w \in Ob(\mathcal{V})$ we can define $\mathcal{V}(v,w)$ as 
   $(v \multimap w) \in \mathcal{V}$
- For this to be an enrichment, we need to check the two conditions.
    - The first condition $I \leq \mathcal{X}(x,x) = x \multimap x$ is
      satsified because $I \otimes x \leq x$
    - The second condition is satisfied by SMP currying