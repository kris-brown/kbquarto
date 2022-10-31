- Consider the total orders $P = Q = \underline{3}$ with the following 
  [monotone maps](/docs/math/defs/monotone_map.qmd):
  - \begin{tikzcd} \pagecolor{white} P \arrow[d, "f"', dotted] & \overset{1}{\bullet} \arrow[r] \arrow[d, dotted, bend right]  & \overset{2}{\bullet} \arrow[r] \arrow[ld, dotted, bend right] & \overset{3}{\bullet} \arrow[d, dotted, bend right] & P \\ Q & \overset{1}{\bullet} \arrow[r] \arrow[ru, dashed, bend right] & \overset{2}{\bullet} \arrow[r] \arrow[u, dashed, bend right]  & \overset{3}{\bullet} \arrow[u, dashed, bend right] & Q \arrow[u, "g"', dashed] \end{tikzcd}
  - These do form a Galois connection
- These maps do not form a Galois connection:
    - \begin{tikzcd} \pagecolor{white} P \arrow[d, "f"', dotted] & \overset{1}{\bullet} \arrow[r] \arrow[d, dotted, bend right]     & \overset{2}{\bullet} \arrow[r] \arrow[d, dotted, bend right=49] & \overset{3}{\bullet} \arrow[d, dotted, bend right] & P \\ Q & \overset{1}{\bullet} \arrow[r] \arrow[ru, dashed, bend right=49] & \overset{2}{\bullet} \arrow[r] \arrow[u, dashed, bend right]    & \overset{3}{\bullet} \arrow[u, dashed, bend right] & Q \arrow[u, "g"', dashed] \end{tikzcd}
    - These do not because of $p=2, q = 1$
    - $f(p)=2 \not \leq q=1$ which is not the same as $p = 1 \leq g(q)=2$
- In some sense that can be formalized, for total orders the notion of Galois 
  connection corresponds to the maps not 'crossing over.'