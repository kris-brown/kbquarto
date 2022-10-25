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