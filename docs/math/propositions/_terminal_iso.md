All terminal objects in a category $\mathcal{C}$ are 
[isomorphic](/docs/math/defs/iso.qmd)

::: {.callout-note collapse=true appearance="minimal"}
## Proof

- Suppose $Z,Z'$ are both terminal objects. Therefore there exist *unique* 
  maps $Z \overset{a}{\underset{b}{\rightleftarrows}}Z'$
- Composing these we get $Z \xrightarrow{a;b} Z$, but this is forced to be the 
  identity map because there is only one morphism from $Z$ to itself and we 
  have to have an identity.
- Therefore we can talk about 'the terminal object' as if there were only one.
:::