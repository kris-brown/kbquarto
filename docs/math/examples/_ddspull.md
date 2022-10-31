- Pulling back data along a [functor](/docs/math/defs/functor.qmd)
- We'll migrate data between the graph-indexing schema **Gr** and the loop schema, called **DDS** (for discrete-dynamical system).
- We'll write down an example instance $\mathbf{DDS}\xrightarrow{I}\mathbf{Set}$


| State | Next |
|----|----|
| 1     | 4    |
| 2     | 4    |
| 3     | 5    |
| 4     | 5    |
| 5     | 5    |
| 6     | 7    |
| 7     | 6    |


-  We want to convert this state information into a graph that will let us visualize our machine.
- Use the following [functor](/docs/math/defs/functor.qmd) $F$: \begin{tikzcd} \pagecolor{white}\overset{Arr}\bullet \arrow[red,d, "tar", bend left] \arrow[blue,d, "src"', bend right] &\overset{State}\bullet \arrow[red, loop below, "next"] \\\overset{Vert}\bullet&\end{tikzcd}

    - *src* is sent to identity
    - Can now generate a graph using the composite [functor](/docs/math/defs/functor.qmd) $\mathbf{Gr}\xrightarrow{F}\mathbf{DDS}\xrightarrow{I}\mathbf{Set}$


| Arr | src | tar|
|---|---|---|
| 1   | 1   | 4  |
| 2   | 2   | 4  |
| 3   | 3   | 5  |
| 4   | 4   | 5  |
| 5   | 5   | 5  |
| 6   | 6   | 7  |
| 7   | 7   | 6  |

  $Vert = \bar{7}$


-  We can now draw the graph: \begin{tikzcd} \pagecolor{white} & 1 \arrow[rd] && 2 \arrow[ld]&\\3 \arrow[rd] && 4 \arrow[ld] &&\\& 5&& 6 \arrow[r, bend left] & 7 \arrow[l, bend left]\end{tikzcd}
- This procecure can be called "pulling back data along a [functor](/docs/math/defs/functor.qmd)". We pulled back data $I$ along functor $F$ (via functor composition).
