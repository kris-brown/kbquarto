A *cone* $(C,c_*)$ over a [diagram](/docs/math/defs/diagram.qmd) 
$\mathcal{J}\xrightarrow{D}\mathcal{C}$ and the 
[category](/docs/math/defs/cat.qmd) $\mathbf{Cone}(D)$

<div id="cone"/></div>
-  We require:
    - An object $C \in Ob(\mathcal{C})$
    - For each object $j \in \mathcal{J}$, a morphism $C \xrightarrow{c_j}D(j)$.
- The following property must be satisfied:
    - $\forall f \in \mathcal{J}(j,k):$ $c_k=c_j;D(f)$
- A *morphism of cones* is a morphism $C \xrightarrow{a} C'$ in 
  $\mathcal{C}$ such that, for all $j \in \mathcal{J}$, we have $c_j=a;c'_j$.
- Cones and their morphisms form a category.
