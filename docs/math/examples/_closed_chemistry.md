What would a monoidal closed structure mean for the resource theory of 
chemistry?

- For any two material collections, one can form a material collection 
  $c \multimap d$ with the property that, for any $a$ one has 
  $a + c \rightarrow d$ iff $a \rightarrow (c \multimap d)$
- Concretely, say we have $2 
  {\rm H_2O} + 2 {\rm Na} \rightarrow 2 {\rm NaOH} + {\rm H_2}$, we must also 
  have $2{\rm H_2O} \rightarrow (2{\rm Na} \multimap (2{\rm NaOH}+{\rm H_2}))$
- From two molecules of water, you can form a certain substance. This doesn't 
  make sense, so maybe this 
  [symmetric monoidal preorder](/docs/math/defs/smp.qmd) is not closed.
- Alternatively, think of the substance 
  $2{\rm Na} \multimap (2{\rm NaOH}+{\rm H_2})$ as a *potential reaction*, that 
  of converting sodium to sodium-hyroxide+hydrogen. Two molecules of water 
  unlock that potential.
