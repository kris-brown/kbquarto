A *Lawvere metric space* is a 
[**Cost**](/docs/math/examples/cost_smp.qmd)-category, i.e. a 
[category enriched](/docs/math/defs/vcat.qmd) 
in the [symmetric monoidal preorder](/docs/math/defs/smp.qmd) 
$\mathbf{Cost}=([0,\infty],\geq,0,+)$.

- $X$ is given as $Ob(\mathcal{X})$
- $d(x,y)$ is given as $\mathcal{X}(x,y)$
- The axiomatic properties of a category enriched in **Cost** are:

1. $0 \geq d(x,x)$
2. $d(x,y)+d(y,z) \geq d(x,z)$
