Let an *inference* be a statement with a 
[material conditional](/docs/math/defs/material_conditional.qmd), i.e. of the 
form "If $P$, then $Q$"[^1] in a language with ordinary statements as well as 
logical connectives (e.g.  *and*, *or*). We want 
a rigorous way to distinguish that following kinds of inferences:

<style>
table th:first-of-type {
    width: 10%;
}
table th:nth-of-type(2) {
    width: 40%;
}
table th:nth-of-type(3) {
    width: 40%;
}
</style>

| | Material inference | Logically-valid inference |
|--|--------------------|--------------------------|
**E.g.** | *If* it's a cat, *then* it's a mammal.<br>*If* pigs can fly, *then* $X$.[^2]<br>*If* it's red, *then* it's colored | *If* it's blue *and* red, *then* it's red *and* blue <br> *If* I'm angry, *then* I'm angry.<br>*If* $A$ *and* it's hot, *then* it's hot *or* $B$. |
**Def** | Can be changed from a good inference into a bad one by substituting some nonlogical vocabulary for different nonlogical vocabulary | True no matter what you plug in for the variables or substitute for the non-logical vocabulary. |
**Demo** | The first example would become bad if we replaced 'cat' with 'turtle' | No matter what we replace 'blue' with in the first example, it will still be true. |
**Slogan** | Descriptive terms appear *essentially* | Descriptive terms appear *vacuously* |
**Form** | True, but not because of its logical form | True in virtue of its logical form|

[^1]: Letters (e.g. $P$, $Q$, $X$) represent logical variables. These have the 
      meaning of being replacable with anything, loosely speaking. 

[^2]: This demonstrates that this distinction is different from the 
[analytic/synthetic distinction](/docs/phil/distinctions/made/analytic_synthetic.qmd). 
There, a cat being a mammal would feel like an *analytic* statement, while 
pigs not being able to fly feels more *synthetic*.

### Generalization

This move was to take a notion of "what is a logical connective?" and pick out 
which sentences are "logically-valid" sentences. This could be generalized to 
give us a notion of other types of vocabularies. E.g. we identify *theological* 
vocabulary (e.g. *God*, *pious*) and observe which good inferences (e.g. 
"*If God loves* fishing, *then* fishing *is pious*") cannot 
be made into bad inferences by substituting non-theological vocabulary, i.e. 
sentences which are true purely due to their theological form.
