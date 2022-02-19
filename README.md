# Book Template for Franklin.jl

Book-like template for [Thibaut Lienart](https://github.com/tlienart)'s static web-site generator [Franklin.jl](https://github.com/tlienart/Franklin.jl).

It currently has the following features:

* Provides a menu bar with a table of contents for a given collection of pages (as listed in the variable `menu`, in [config.md](config.md));
* Navigation links on each page;
* Automatic numbering of some or all pages, as desired;
* Pages generated in several different formats:
    * [Franklin.jl](https://github.com/tlienart/Franklin.jl)'s native markdown flavor;
    * Julia Markdown (`.jmd` files) executed by [Weave.jl](https://github.com/JunoLab/Weave.jl) itself.
    * [Literate.jl](https://github.com/fredrikekre/Literate.jl)'s Markdown  executed by [Literate.jl](https://github.com/fredrikekre/Literate.jl) itself.
    * Pure julia scripts (with Markdown comments) executed/rendered by either [Literate.jl](https://github.com/fredrikekre/Literate.jl) or [Weave.jl](https://github.com/JunoLab/Weave.jl).
* All execution/rendering generated automatically, based on the folder they belong to (whether `pages/`, `_weave/`, or `_literate/`, with the files in the latter two folders being rendered to markdown files in `pages/weaved/` and `pages/literated/`, respectively).
* Appealing visual display based on [Rik Huijzer](https://github.com/rikhuijzer)'s CSS used in [Books.jl](https://github.com/JuliaBooks/Books.jl).


This is an off-spring of the draft template in [tlienart/booksjl-franklin](https://github.com/tlienart/booksjl-franklin), with many extra goodies.

> **:warning: WARNING:**
> This template is under active development, with the code being optimized and more tools/configurations being implemented. Working now on automatic generating Jupyter notebooks, along with links, in each page, to download or open the associated notebooks in NBViwer and Binder.
