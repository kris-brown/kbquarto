Let $\mathcal{C}\xrightarrow{F}\mathcal{D}$ be a functor. How should we define 
its opposite: $\mathcal{C}^{op}\xrightarrow{F^{op}}\mathcal{D}^{op}$

::: {.callout-note collapse=true appearance="minimal"}
## Solution

- There is an [isomorphism](/docs/math/defs/iso.qmd) between a 
  [category](/docs/math/defs/cat.qmd) and its opposite, meaning there are 
  natural functors $\overset{\cong}\rightarrow$ which alternate between them.
- Define $\mathcal{C}^{op}\xrightarrow{F^{op}}\mathcal{D}^{op}$ as 
  $F ; \overset{\cong}\rightarrow$. This is a valid functor as it is the 
  composition of two functors.
:::