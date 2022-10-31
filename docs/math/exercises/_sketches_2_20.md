Given the assertions the interior of this wiring diagram:  \begin{tikzcd}[ampersand replacement=\&] \pagecolor{white}
              \cdot \arrow[r, "t"]  \& \boxed{\leq} \arrow[rr, "v"] \arrow[rd, "w"]\& \& \boxed{\leq} \arrow[r, "y"] \& \cdot \\
              \cdot \arrow[rr, "u"] \& \& \boxed{\leq} \arrow[ru, "x"] \arrow[rr,"z"] \&                             \& \cdot
            \end{tikzcd}

Prove that the conclusion follows using the rules of symmetric monoidal preorders (make sure to use reflexivity and transitivity).

How do you know that symmetry axiom does not need to be invoked?


::: {.callout-note collapse=true appearance="minimal"}
## Solution
Assertions:

- $t \leq v+w$
- $w+u \leq x+z$
- $v+x \leq y$

Conclusion: $t+u \leq y+z$

Proof:

- $(t)+(u) \leq (v+w)+(u)$ - from monotonicity and reflexivity of $u$
- $= v+(w+u)$ - associativity
- $\leq v+(x+z)$ - monotonicity and reflexivity of $v$
- $= (v+x)+z$ - associativity
- $\leq y+z$ - monotonicity and reflexivity of $z$

Symmetry was not needed because the diagram had no crossing wires.

:::