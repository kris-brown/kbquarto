A $\mathcal{V}$ *category* (a category enriched in $\mathcal{V}$) where 
$\mathcal{V}$ is a [symmetric monoidal category](/docs/math/defs/smc.qmd).

- Call the category $\mathcal{X}$. There are four constituents:
    - A collection of objects, $Ob(\mathcal{X})$
    - For every pair in $Ob(\mathcal{X})$ one specifies the 
      *hom-object* $X(x,y) \in \mathcal{V}$.
    - For every object, specify a 
      $I \xrightarrow{id_x}X(x,x) \in \mathcal{V}$ 
      called the *identity element*
    - For every pair of compatible morphisms, a 
      $\mathcal{X}(x,y)\otimes\mathcal{X}(y,z)\xrightarrow{;}\mathcal{X}(x,z)$ 
      called the *composition morphism*.
- These satisfy the usual associative and unital laws.
