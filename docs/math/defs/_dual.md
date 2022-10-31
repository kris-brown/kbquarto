The *dual* for an object $c \in Ob(\mathcal{C})$, which is part of a 
symmetric monoidal category $(\mathcal{C},I,\otimes)$ has three consituents:

1. An object $c^* \in Ob(\mathcal{C})$ called the *dual of c*
2. A morphism $I\xrightarrow{\eta_c}c^* \otimes c$ called the *unit for c*
3. A morphism $c \otimes c^* \xrightarrow{\epsilon_c}I$ called the 
   *counit for c*

These are required to satisfy two commutative diagram relations 
(*snake equations*)

\begin{tikzcd} \pagecolor{white}
    & c \arrow[ld, "\cong"'] &                                                              \\
    c\otimes I \arrow[d, "c \otimes \eta_c"']      &                        & I \otimes c \arrow[lu, "\cong"']                             \\
    c \otimes (c^* \otimes c) \arrow[rr, "\cong"'] &                        & (c \otimes c^*) \otimes c \arrow[u, "\epsilon_c \otimes c"']
  \end{tikzcd}


and


\begin{tikzcd} \pagecolor{white}
    & c \arrow[rd, "\cong"] & \\
    c^*\otimes I \arrow[ru, "\cong"] & & I \otimes c^* \arrow[d, "\eta_c \otimes c^*"]   \\
    c^* \otimes (c \otimes c^*) \arrow[u, "c^* \otimes \epsilon_c"] & & (c^* \otimes c) \otimes c^* \arrow[ll, "\cong"] \end{tikzcd}
