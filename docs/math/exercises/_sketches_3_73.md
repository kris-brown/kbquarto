
[Currying](/docs/math/examples/currying.qmd) was an adjunction between 
functors in **Set**, but the 
example only discussed what the functors did to objects.

1. Given a morphism $X \xrightarrow{f}Y$, what morphism should 
   $X \times B \xrightarrow{-\times B}Y\times B$ return?
2. Given a morphism $X \xrightarrow{f}Y$, what morphism should 
   $X^ B \xrightarrow{(-)^B}Y^B$ return?
3. Consider $\mathbb{N}\times \mathbb{N}\xrightarrow{+}\mathbb{N}$. 
   Currying $+$, we get a certain function 
   $\mathbb{N}\xrightarrow{p}\mathbb{N}^\mathbb{N}$. What is $p(3)$?

::: {.callout-note collapse=true appearance="minimal"}
## Solution
1. This morphism maps $(x,b)\mapsto (f(x),b)$
2. This morphism takes in a function $B \xrightarrow{bx} X$ and composes 
   with *f* to give $B \xrightarrow{bx;f} Y$
3. It takes a number and returns a function which adds three to that number.
:::