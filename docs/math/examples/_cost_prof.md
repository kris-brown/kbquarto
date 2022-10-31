
**Cost** [profunctor](/docs/math/defs/vprof.qmd) and their interpretation as bridges.

- **Cost** categories are Lawvere metric spaces and can be represented by weighted graphs
- This is a depiction of a **Cost**-[profunctor](/docs/math/defs/vprof.qmd)

\begin{tikzcd} \pagecolor{white}
  A \arrow[d, "3"', bend right] & B \arrow[l, "2"', bend right] \arrow[d, "5", bend left] \arrow[r, "11", blue, dotted, bend left] & x \arrow[rr, "3", bend left] \arrow[rd, "4", bend left] &                              & z \arrow[ld, "4", bend left] \\
  C \arrow[ru, "3"]                  & D \arrow[l, "4", bend left] \arrow[rr, "9", blue, dotted, bend right]                            &                                                         & y \arrow[lu, "3", bend left] &
\end{tikzcd}

- The distance from a point in the left to a point in the right will run through the left, across a bridge, then through through the right.
- $\phi(B,x)=11$,$\phi(A,z)=20$,$\phi(C,y)=17$