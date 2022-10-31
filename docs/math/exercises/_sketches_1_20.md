Finish [Proposition 1-19](/docs/math/propositions/sketches_partition_eqrel.qmd). 

Suppose that $\sim$ is 
an equivalence relation on a set A, and let P be the set of $\sim$-closed and 
$\sim$-connected subsets.

1. Show that each part $A_p$ is nonempty
2. Show that $p \ne q \implies A_p \cap A_q = \varnothing$
3. Show that $A = \bigcup_{p \in P} A_p$

::: {.callout-note collapse=true appearance="minimal"}
## Solution
- Part of the definition of $\sim$-connected is being nonempty
- Suppose $a \in A$ is in the intersection. Then $a \sim p$ and $a \sim q$ for 
  some elements $p \not\sim q$ arbitrarily selected from $A_p, A_q$. But this is 
  impossible because $\sim$ is transitive, so this must be impossible.
    - Every $a \in A$ is part of some equivalence class which is a $\sim$-closed 
      and $\sim$-connected set, so $A \subseteq \bigcup_{p \in P} A_p$
            - The equivalence class is $\sim$-closed because two elements being 
              $\sim$-related implies they are in the same equivalence class.
            - The equivalence class is $\sim$-connected because equivalence 
              classes are nonempty and the equivalence relation is transitive.
    - The constituents of $A_p$ were defined to be subsets of $A$, so unioning 
      these will also be a subset of $A$, i.e. $\bigcup_{p \in P} A_p \subseteq A$.
    - Therefore $A = \bigcup_{p \in P} A_p$.
:::