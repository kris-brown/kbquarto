
-  Any non-decreasing sequence of naturals can be identified with a 
   [functor](/docs/math/defs/functor.qmd) $\mathbb{N}\rightarrow \mathbb{N}$, 
   considering the preorder of naturals as a category.
- A [natural transformation](/docs/math/defs/natural_transformation.qmd) between
  two of these 
  [functors](/docs/math/defs/functor.qmd) would require a component $\alpha_n$ 
  for each natural, 
  which means a morphism from $F_n \rightarrow G_n$. This exists iff 
  $F(n)\leq G(n)$.
- Thus we can put a preorder structure over the 
  [monotone map](/docs/math/defs/monotone_map.qmd) of 
  $\mathbb{N} \rightarrow \mathbb{N}$ 
  (this is a thin [functor category](/docs/math/defs/funcat.qmd)
  $\mathbb{N}^\mathbb{N}$).
