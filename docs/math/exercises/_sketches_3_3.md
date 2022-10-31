
Count the number of non-ID columns in the following database and compare to the 
number of foreign keys in the database schema.

| Employee | FName | WorksIn | Mngr|
|-------|------|-----|---|
| 1        | Alan  | 101     | 2   |
| 2        | Ruth  | 101     | 2   |
| 3        | Kris  | 102     | 3   |



|    Dept | DName | Secr |
|---|--|--|
|   101  | Sales | 1    |
|  102  | IT    | 3    |


\begin{tikzcd} \pagecolor{white} Mngr \circlearrowright \underset{Employee}{\bullet}\arrow[rr, "WorksIn", bend left] \arrow[rd, "FName"'] &                        & \underset{Dept}{\bullet} \arrow[ll, "Secr"]\arrow[ld, "DName"] \\                                                                                                         & \overset{string}{\circ} &                                                                           \end{tikzcd}


::: {.callout-note collapse=true appearance="minimal"}
## Solution
They are the same: 5

:::
