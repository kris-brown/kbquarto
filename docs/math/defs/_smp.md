A *symmetric monoidal structure* on a preorder $(X, \leq)$ adds 
two additional constituents:

- A *monoidal unit* $I \in X$
- A *monoidal product* $X \times X \xrightarrow{\otimes} X$

Satisfying the following properties:

- Monotonicity: $\forall x_1,x_2,y_1,y_2 \in X: x_1 \leq y_1 \land x_2 \leq y_2 \implies x_1 \otimes x_2 \leq y_1 \otimes y_2$
- Unitality: $\forall x \in X: I \otimes x = x = x \otimes I$
- Associativity: $\forall x,y,z \in X: (x \otimes y) \otimes z = x \otimes (y\otimes z)$
- Symmetry: $\forall x,y \in X: x \otimes y = y \otimes x$

The notation for monoidal product and unit may vary depending on context. 
$I, \otimes$ are defaults but it may be best to use $(0,+),(1,*),(true, \land)$ 
(etc.)

A *weak* symmetric monoidal structure would mean replacing all $=$ 
signs with $\cong$ signs.
