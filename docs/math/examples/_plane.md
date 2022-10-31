- Consider a functor which discards the distinction between Economy and First Class seats in an airplane.
- \begin{tikzcd} \pagecolor{white} & Money & \\ Econ \arrow[ru, "Price"] \arrow[rd, "Position"'] & & 1st \arrow[lu, "Price"'] \arrow[ld, "Position"] \\ & string & \end{tikzcd}
- \begin{tikzcd} \pagecolor{white} Money \\ Seat \arrow[u, "Price"] \arrow[d, "Position"'] \\ string \end{tikzcd}
- The $\Delta$ functor is uninteresting - it will copy the rows for Seat into both Economy and First class.
- The functor $\Pi$ puts into each airline seat only seats which are in both the Economy and First Class tables with the same price and position.
- The functor $\Sigma$ puts all Economy and First Class seats into the Seat table and discards the information of from which table they came from.

