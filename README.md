# Book Template for Franklin.jl

Book-like template for [Thibaut Lienart](https://github.com/tlienart)'s [Franklin.jl](https://github.com/tlienart/Franklin.jl) web-site generator. The style sheets are based on [Rik Huijzer](https://github.com/rikhuijzer)'s CSS used in [Books.jl](https://github.com/JuliaBooks/Books.jl).

The idea is to provide a menu bar with a table of contents for the different content pages, treated like sections of a book, and also navigation links between the different pages.

The sections can be written either in [Markdown](https://docs.julialang.org/en/v1/stdlib/Markdown/), with the code evaluated by [Franklin.jl](https://github.com/tlienart/Franklin.jl) or by [Weave.jl](https://github.com/JunoLab/Weave.jl), or as a pure [Julia](https://julialang.org) script, with code rendered by [Weave.jl](https://github.com/JunoLab/Weave.jl). The proper rendering is done automatically, depending on the filename extension, whether `.md`, `.jmd`, or `.jl`, respectively.

The table of contests is build out of a `menu` variable defined in `config.md`, pointing to the different filenames. One may choose the sections to be automatically numbered or not. You may also number only some sections, with the nonnumbered ones marked with a `*` sign, in the `menu` variable - [LaTeX](https://www.latex-project.org) style. Check out an example in [config.md](config.md).

You can check an example of this template at the github page: [Book Template for Franklin.jl](https://rmsrosa.github.io/booksjl-franklin-template/_weaved/pages/weavejl/).


This is an off-spring of the draft template in [tlienart/booksjl-franklin](https://github.com/tlienart/booksjl-franklin).

> **:warning: WARNING:**
> This template is already functional, but it is still under active construction, with the code being optimized and more tools being implemented. Planned tools involve the ability to automatic generate Jupyter notebooks, if desired, along with links, in each page, to open the associated notebooks in Binder and maybe links to automatically download the files from the github repo.
