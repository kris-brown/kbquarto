## Adjoints in **Set**
<div id="set-adjoints"/></div>

- Let $A \xrightarrow{f} B$ be a set function, say between apples and buckets 
  into which we put each apple.
- The [pullback](/docs/math/defs/pullback_along_mono_map.qmd) along $f$, 
  $\mathbb{P}(B) \xrightarrow{f^*} \mathbb{P}(A)$, maps each subset 
  $B' \subseteq B$ to its preimage $f^{-1}(B') \subseteq A$
    - It tells you for a set of buckets all the apples contained in total.
    - It is a monotonic map which has a left and right adjoint: 
      $f_! \dashv f^* \dashv f_*$
- The left adjoint $\mathbb{P}(A)\xrightarrow{f_!}\mathbb{P}(B)$ is given by the 
  direct image
    - $f_!(A') := \{b \in B\ |\ \exists a \in A': f(a)=b\}$
    - Tells you for a set of apples all the buckets that contain at least one of 
      those apples.
- The right adjoint $\mathbb{P}(A) \xrightarrow{f_*} \mathbb{P}(B)$ is defined 
  as follows:
    -  $f_*(A') := \{b \in B\ |\ \forall a: f(a)=b \implies a \in A'\}$
    - Tells you all the buckets which are all-$A\prime$ (note that empty buckets 
      vacuously satisfy this condition).
- Adjoints often turn out to have interesting semantic interpretations.