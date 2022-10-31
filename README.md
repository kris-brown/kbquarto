# kbquarto

Building a [personal website](https://www.krisb.org/) using Quarto. Based on 
Quarto's own website.

Note, this is designed to work a *local* copy of 
[mathjax](https://docs.mathjax.org/en/latest/web/hosting.html), stored in a 
top-level directory `/es5`, so that math will render even offline.

There are some extra scripts required because of some missing Quarto features.

For example, backlinks are not supported, so it is required to independently 
parse all internal links in all pages and construct `.yml` files with the 
backlinks (stored in `backlinks/`) that get referred to in each file. 

Furthermore, some content is shared amongst multiple files. This is handled via 
`include` statements. One includes a `.md` file into possibly many `.qmd` files.
However, `quarto preview` does not update the `.qmd` file when the `.md` file 
changes, so a `fswatch` process must be launched in order to `touch` the 
relevant `.qmd` files.

The categories `⚪, 🔴, 🟠, 🟢, 🟣` are used to distinguish the various levels of 
polish of notes. White being for stubs / to-dos, red being for very messy, etc.

## Methodological issues 
- What perspective is a page being written from? E.g. in "Universals". I do not 
  want to maintain a wikipedia standard that every claim needs a citation, but 
  it's nice to know who is accountable for what is written:
  - "X from the perspective of Y"? 
  - My own take on a particular source?
  - My own synthesis of multiple sources?
  - Solution for now: 
    - all personal commentary is relegated to the blog. These 
      can be very short and just link the main article and add a paragraph.
    - main note content has "According to ..." clauses when points that are 
      especially controversial are made. Implicitly everything is a *bit* biased 
      given that I'm writing it and have selected to read from certain sources.
      If it makes sense I could put at the top of certain notes that it is from 
      the perspective of a particular source, though in that case perhaps it 
      should be in the `works/` folder. 
- How to organize the concepts/definitions?
  - What even is a definition?