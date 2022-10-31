- Consider the [feasibility relation](/docs/math/defs/feasibility_relation.qmd)
\begin{tikzcd} \pagecolor{white}
  T \arrow[rd] &                        &             \\
  & \boxed{\phi} \arrow[r] & Money \\
  E \arrow[ru] &                        &
\end{tikzcd}
    - $T:=\boxed{mean\rightarrow nice}$
    - $E:=\boxed{boring\rightarrow funny}$
    - $Money:=\boxed{100 K\rightarrow 500 K \rightarrow 1M}$

- A possible [feasibility relation](/docs/math/defs/feasibility_relation.qmd) is here:
\begin{tikzcd} \pagecolor{white}
  & {(nice,funny)}                                             &                                                &  & 1M             \\
  {(mean, funny)} \arrow[ru] \arrow[rrrru, blue, dotted] &                                                            & {(nice, boring)} \arrow[lu] \arrow[rr, blue, dotted] &  & 500K \arrow[u] \\
  & {(mean, boring)} \arrow[ru] \arrow[lu] \arrow[rrr, blue,dotted] &                                                &  & 100K \arrow[u]
\end{tikzcd}

- This says, e.g., a nice but boring movie costs $500,000 to produce.
- We can infer that we can also make a mean/boring movie with what we can 
  produce nice/boring movie.