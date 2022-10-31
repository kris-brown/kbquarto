
**Bool**-[profunctor](/docs/math/defs/vprof.qmd) and their interpretation as bridges

- Let's consider **Bool**-[profunctor](/docs/math/defs/vprof.qmd). Recall a preorder (**Bool**-[category](/docs/math/defs/vcat.qmd)) can be drawn as a Hasse diagram.
- A **Bool**-[profunctor](/docs/math/defs/vprof.qmd) $X \overset{\phi}{\nrightarrow} Y$ can look like this:

\begin{tikzcd} \pagecolor{white}
  & N \arrow[rrr, blue,dotted, bend left] \arrow[rrrrdd, blue, dotted, bend left] &                                             &              & e                       &   \\
  W \arrow[ru] &                                                                    & E \arrow[lu] \arrow[rd, blue, dotted, bend right] & d \arrow[ru] &                         &   \\
  & S \arrow[lu] \arrow[ru] \arrow[rrrd, blue, dotted, bend right]           &                                             & b \arrow[u]  &                         & c \\
  &                                                                    &                                             &              & a \arrow[ru] \arrow[lu] &
\end{tikzcd}


- With bridges coming from the [profunctor](/docs/math/defs/vprof.qmd), one can now use both paths to get from points in $X$ to points in $Y$.
- There is a path from $N$ to $e$, so $\phi(N,e)=true$ but $\phi(W,d)=false$.
- We could put a box around both preorders and define a new preorder, called the *collage*.