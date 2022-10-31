
- Consider the monoidal category $(\mathbf{Set},1,\times)$ together with the 
  following diagram (TO DO NEED TO COPY)
- $A=B=C=D=F=G=\mathbb{Z}$ and $E=\mathbb{B}$
- $f_C(a)=|a|$,
- $f_D(a)=a*5$,
- $g_E(d,b)=d\leq b$
- $g_F(d,b)=d-b$
- $h(c,e)=\text{if }e\text{ then }c\text{ else }1-c$
- Suppose the whole diagram defines a function $A \times B \xrightarrow{q} G \times F$
1. What are $g_E(5,3)$ and $g_F(5,3)$?
2. What are $g_E(3,5)$ and $g_F(3,5)$?
3. What is $h(5,true)$?
4. What is $h(-5,true)$?
5. What is $h(-5,false)$?
6. What are $q_G(-2,3)$ and $q_F(-2,3)$?
7. What are $q_G(2,3)$ and $q_F(2,3)$?

::: {.callout-note collapse=true appearance="minimal"}
## Solution
1. $False,\ 2$
2. $True,\ -2$
3. $5$
4. $-5$
5. $6$
6. $(2,-13)$ ... $a\mapsto -2,\ b \mapsto 3,\ c\mapsto 2,\ d\mapsto -10,\ e\mapsto true,\ f\mapsto -13, g \mapsto 2$
7. $(-1,7)$ ... $a\mapsto 2,\ b \mapsto 3,\ c \mapsto 2,\ d\mapsto 10,\ e\mapsto false, f\mapsto 7, g\mapsto -1$
:::