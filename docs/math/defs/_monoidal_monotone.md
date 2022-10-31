A *monoidal monotone map* from $(P,\leq_P,I_P,\otimes_P)$ to 
$(Q, \leq_Q,I_Q,\otimes_Q)$ is a 
[monotone map](/docs/math/defs/monotone_map.qmd) 
$(P,\leq_P) \xrightarrow{f} (Q,\leq_Q)$ 
satsifying two conditions:

1. $I_Q \leq_Q f(I_P)$
2. $\forall p_1,p_2 \in P:$ $f(p_1)\ \otimes_Q\ f(p_2)\ \leq_Q\ f(p_1\ \otimes_P\ p_2)$

If the $\leq$ are replaced with $\cong$, the map is *strong*, and if replaced 
with $=$, it is *strict*.