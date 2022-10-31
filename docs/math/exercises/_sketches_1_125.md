
Let $S=\{1,2,3\}$

1. Come up with any preorder relation on $S$, and define 
   $U(\leq):=\{(s_1,s_2)\ |\ s_1 \leq s_2\}$ (the relation 'underlying' the 
   preorder. Note $U: \mathbf{Pos}(S) \hookrightarrow \mathbf{Rel}(S)$)
2. Pick binary relations such that $Q \subseteq U(\leq)$ and 
   $Q' \not \subseteq U(\leq)$

We want to check that the reflexive/transitive closure operation $Cl$ is really 
left adjoint to the underlying relation $U$.
   - The meaning of $Cl \dashv U$ is $Cl(R) \sqsubset \leq \iff R \sqsubset U(\leq)$, 
     where $\sqsubset$ is the order relation on $\mathbf{Pos}(S)$

1. Concretely show that $Cl(Q) \sqsubset \leq$
2. Concretely show that $Cl(Q') \not \sqsubset \leq$

::: {.callout-note collapse=true appearance="minimal"}
## Solution
1. Let the preorder be given by this diagram (with implicit reflexive arrows): 
   \begin{tikzcd} \pagecolor{white} 2 \arrow[rr] && 3 \\& 1 \arrow[lu] \arrow[ru] &  \end{tikzcd}
2. Let $Q$ be given by the following diagram
    - \begin{tikzcd} \pagecolor{white} 2 && \looparrowright 3 \\& \looparrowright 1 \arrow[lu] &\end{tikzcd}
    - and let $Q'=S\times S$
3. $Cl(Q) = \{11,12,22,33\}$ $\sqsubset$ $\leq = \{11,22,33,12,23,13\}$
4. $Cl(Q') = Q' = S \times S$ $\not \sqsubset$ $\leq$  (reason: 
   $(3,1) \in S \times S$ but $(3,1) \not \in \leq$)
:::