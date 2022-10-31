A **rough** definition of a *symmetric monoidal structure* on a 
[category](/docs/math/defs/cat.qmd) $\mathcal{C}$ is:

- Two additional constituents
    - An object $I \in Ob(\mathcal{C})$ called the *monoidal unit*
    - A functor $\mathcal{C}\times \mathcal{C}\xrightarrow{\otimes}\mathcal{C}$ 
      called the *monoidal product*
- Subject to the **well-behaved**, natural isomorphisms
    - $I \otimes c \overset{\lambda_c}\cong c$
    - $c \otimes I \overset{\rho_c}\cong c$
    - $(c \otimes d)\otimes e \overset{\alpha_{c,d,e}}\cong c \otimes (d\otimes e)$
    - $c \otimes d \overset{\sigma_{c,d}}\cong d \otimes c$
- A category equipped with these is a *symmetric monoidal category*
