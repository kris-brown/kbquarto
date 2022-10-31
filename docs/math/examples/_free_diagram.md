Suppose $\mathcal{J}$ is the free category on the graph
  $\boxed{1 \rightarrow 2 \leftarrow 3 \rightrightarrows 4 \rightarrow 5}$
- We may draw a diagram $\mathcal{J}\xrightarrow{D}\mathcal{C}$ inside 
  $\mathcal{C}$ as below:
- $\boxed{D_1 \rightarrow D_2 \leftarrow D_3 \rightrightarrows D_4 \rightarrow D_5}$
- We can represent this diagram as a cone over the diagram by picking a 
  $C \in \mathcal{C}$ for which every pair of parallel paths that start from 
  $C$ are the same.
- \begin{tikzcd} \pagecolor{white}              & C \arrow[d, "c_3"'] \arrow[ld, "c_1"'] \arrow[ldd, "c_2"']\arrow[rdd, "c_4"] \arrow[rrdd, "c_5"] &               &     \\D_1 \arrow[d] & D_3 \arrow[ld] \arrow[rd] \arrow[rd, bend right]                                                  &               &     \\D_2         &                                                                                                  & D_4 \arrow[r] & D_5\end{tikzcd}
