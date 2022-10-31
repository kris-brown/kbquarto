Consider the schema:

$\mathfrak{g} := \boxed{\overset{Email}\bullet \overset{sentBy}{\underset{receivedBy}{\rightrightarrows}} \overset{Address}\bullet}$

And an example instance: $\mathfrak{g}\xrightarrow{I}\mathbf{Set}$

|Email | SentBy | ReceivedBy|
|--|---|--|
|1     | Bob    | Grace     |
|2     | Grace  | Pat       |
|3     | Bob    | Emmy      |
|4     | Sue    | Doug      |
|5     | Doug   | Sue       |
|6     | Bob    | Bob       |

- Data migration functors $\Sigma_!,\Pi_!$ go from 
  $\mathcal{C}$ **Inst** to **1**-Inst, but we showed that 
  **1**-Inst is equivalent to **Set** in 
  [this example](/docs/math/examples/terminal_nattrans.qmd).
- $\Sigma_!$ tells us the mailing groups, the "connected components" in $I$:


| 1                 |
|----------------|
| Bob-Grace-Pat-Emmy|
| Sue-Doug          |


- $\Pi_!$ tells us the emails that were sent from a person to themselves

| 1            |
|----------|
| $Em_6$ (Bob) |
