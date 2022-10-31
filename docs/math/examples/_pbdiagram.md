If $\mathcal{J}$ is presented by the *cospan* graph 
  $\boxed{\overset{x}\bullet \xrightarrow{f} \overset{a}\bullet \xleftarrow{g}\overset{y}\bullet}$ 
  then its limit is known as a *pullback*.

- Given the diagram $X \xrightarrow{f}A\xleftarrow{g}Y$, the pullback is the 
  cone shown below:

- \begin{tikzcd} \pagecolor{white} C \arrow[d, "c_x"'] \arrow[rd, "c_a"] \arrow[r, "c_y"] & Y \arrow[d, "g"] \\X \arrow[r, "f"']                                      & A               \end{tikzcd}

- Because the diagram commutes, the diagonal arrow is superfluous. One can 
  denote pullbacks instead like so:

\begin{tikzcd} \pagecolor{white} X \times_A Y_\lrcorner \arrow[d, "c_x"'] \arrow[r, "c_y"] & Y \arrow[d, "g"] \\X \arrow[r, "f"']                                         & A               \end{tikzcd}

- The pullback picks out the $(X,Y)$ pairs which map to the same output.
