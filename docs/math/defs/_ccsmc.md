A *compact closed* [symmetric monoidal category](/docs/math/defs/smc.qmd)
is one for which every object there exists a [dual](/docs/math/defs/dual.qmd).  
This allows us to use the following morphisms without reservation:

\begin{tikzpicture}
    \begin{pgfonlayer}{nodelayer}
      \node [] (0) at (0, 0.5) {};
      \node [label=below:c] (1) at (-1, 0.5) {};
      \node [label=above:c] (2) at (-1, 1.5) {};
      \node [] (3) at (0, 1.5) {};
      \node [] (4) at (-2.25, 1) {$\eta_c$};
    \end{pgfonlayer}
    \begin{pgfonlayer}{edgelayer}
      \draw [style=blue pointer] (0.center) to (1.center);
      \draw [style=blue pointer, in=180, out=180, looseness=2.7] (1.center) to (2.center);
      \draw [style=blue pointer, in=180, out=0] (2.center) to (3.center);
    \end{pgfonlayer}
  \end{tikzpicture}

and

\begin{tikzpicture}
    \begin{pgfonlayer}{nodelayer}
      \node [] (0) at (-2, 0.5) {};
      \node [label=below:c] (1) at (-1, 0.5) {};
      \node [label=above:c] (2) at (-1, 1.5) {};
      \node [] (3) at (-2, 1.5) {};
      \node [] (4) at (0.25, 1) {$\epsilon_c$};
    \end{pgfonlayer}
    \begin{pgfonlayer}{edgelayer}
      \draw [style=blue pointer] (0.center) to (1.center);
      \draw [style=blue pointer, in=360, out=360, looseness=2.7] (1.center) to (2.center);
      \draw [style=blue pointer, in=180, out=0] (2.center) to (3.center);
    \end{pgfonlayer}
  \end{tikzpicture}


This also allows us to use the following snake equations in wiring 
diagrams without reservation:


\begin{tikzpicture}
  \begin{pgfonlayer}{nodelayer}
    \node [] (0) at (0, 0) {};
    \node [] (1) at (0, 1) {};
    \node [] (2) at (0, 2) {};
    \node [label=above:c] (3) at (2, 2) {};
    \node [label=below:c] (4) at (-2, 0) {};
    \node [label=below:$c \otimes \eta_c\ |\ $] (5) at (-0.5, -0.25) {};
    \node [label=below:$\ |\ \epsilon_c \otimes c$] (6) at (0.5, -0.25) {};
  \end{pgfonlayer}
  \begin{pgfonlayer}{edgelayer}
    \draw [style=blue pointer] (4.center) to (0.center);
    \draw [style=blue pointer, bend right=90, looseness=2.50] (0.center) to (1.center);
    \draw [style=blue pointer, bend left=90, looseness=2.00] (1.center) to (2.center);
    \draw [style=blue pointer] (2.center) to (3.center);
  \end{pgfonlayer}
\end{tikzpicture}

and

\begin{tikzpicture}
    \begin{pgfonlayer}{nodelayer}
      \node [] (0) at (0, 0) {};
      \node [] (1) at (0, 1) {};
      \node [] (2) at (0, 2) {};
      \node [label=below:c] (3) at (-2, 2) {};
      \node [label=above:c] (4) at (2, 0) {};
      \node [label=below:$\eta_c \otimes c^*\ |\ $] (5) at (-0.5, -0.25) {};
      \node [label=below:$\ |\ c^* \otimes \epsilon_c$] (6) at (0.5, -0.25) {};
    \end{pgfonlayer}
    \begin{pgfonlayer}{edgelayer}
      \draw [style=blue pointer] (4.center) to (0.center);
      \draw [style=blue pointer, bend left=90, looseness=2.50] (0.center) to (1.center);
      \draw [style=blue pointer, bend right=90, looseness=2.00] (1.center) to (2.center);
      \draw [style=blue pointer] (2.center) to (3.center);
    \end{pgfonlayer}
\end{tikzpicture}
