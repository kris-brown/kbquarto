A $\mathcal{V}$-*category*, requires a 
[symmetric monoidal preorder](/docs/math/defs/smp.qmd) 
$\mathcal{V}=(V,\leq,I,\otimes)$

To provide the data for such a category, $\mathcal{X}$, one specifies:

1. A set $Ob(\mathcal{X})$ whose elements are called *objects*
2. A *hom-object* for every pair of objects in $Ob(\mathcal{X})$, written 
   $\mathcal{X}(x,y) \in V$

The following properties must be satisfied:

1. $\forall x \in Ob(\mathcal{X}):$ $I \leq \mathcal{X}(x,x)$
2. $\forall x,y,z \in Ob(\mathcal{X}):$ $\mathcal{X}(x,y)\otimes\mathcal{X}(y,z) \leq \mathcal{X}(x,z)$

We call $\mathcal{V}$ the *base of enrichment* for $\mathcal{X}$ or say that 
$\mathcal{X}$ is *enriched* in $\mathcal{V}$.
