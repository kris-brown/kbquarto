Prove that for any [monotone map](/docs/math/defs/monotone_map.qmd) $P \xrightarrow{f} Q$:

- if there exist $a \lor b \in P$ and $f(a) \lor f(b) \in Q$:
- $f(a) \lor_Q f(b) \leq f(a \lor_P b)$

::: {.callout-note collapse=true appearance="minimal"}
## Solution

-  Let's abbreviate $f(a\ \lor_P\ b)$ as $JF$ (join-first) and 
   $f(b)\ \lor_Q\  f(a)$ as $JL$ (join-last)
    - This exercise is to show that $JL \leq JF$
- The property of joins gives us, in $P$, that $a\ \leq\ (a \lor b)$ and 
  $b\ \leq\ (a \lor b)$
    - Monotonicity then gives us, in $Q$, that $f(a) \leq JF$ and $f(b) \leq JF$
- We also know from the property of joins, in $Q$, that $f(a) \leq JL$ and 
  $f(b) \leq JL$
- The only way that $JF$ could be strictly smaller than $JL$, given that both are 
  $\geq f(a)$ and $\geq f(b)$ is for $f(a) \leq JF < JL$ and  $f(b) \leq JF < JL$
- But, $JL \in Q$ is the smallest thing (or equal to it) that is greater than 
  $f(a)$ and $f(b)$, so this situation is not possible.
:::