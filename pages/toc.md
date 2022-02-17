@def title = "Table of Contents"

# {{ get_title }}

In the [config.md](https://raw.githubusercontent.com/rmsrosa/booksjl-franklin-template/main/config.md) file, you may choose whether to enumerate the sections/pages of the book or not, with the **Bool** variable

* `page_numbering`

The most important variable, though, is the `menu` variable, which is a **Vector** of **Strings** or **Pairs** of **Strings** and **Vector{String}**, providing the structure of the menu:

* `menu`

This is best explained with the example used in this book/documentation:

```julia
menu = [
    "*pages/intro",
    "*PART I",
    "pages/configuration",
    "pages/menu_bar",
    "pages/toc",
    "pages/navigation",
    "*PART II",
    "Math and Code" => [
        "pages/math_and_code",
        "_literate/pages/literatejl.jl",
        "_weave/pages/weavejl.jl",
        "_weave/pages/weavejmd.jmd",
    ],
    "*Appendix",
]
```

1. When a string starts with either `pages/`, `_weave/`, or `_literate/`, it means it points to a file. The title is grabbed from the file. And, depending on the folder, it is executed and rendered by either [Franklin.jl](https://github.com/tlienart/Franklin.jl), [Weave.jl](https://github.com/JunoLab/Weave.jl), or [Literate.jl](https://github.com/fredrikekre/Literate.jl), respectively. Depending on the case, the file can be either Franklin's Markdown, Weave's/Juno's Markdown, Literate's Markdown, or a plain julia script with markdown-like comments.

1. When a string does not start with either of the prefixes above, it does not point to any content file, and simply contains the title of the entry.

1. When an entry is a **Pair**, the second value of the **Pair** is a **Vector of Strings** with the list of subsections, each of them following the pattern above.

1. Inspired by $\LaTeX$, if a string starts with a `*`, it is not to be numbered. Contrarily to $\LaTeX$, however, if that string points to a lists of subsections, none of them gets numbered either, regardless of starting with `*` or not.

1. The title on each page is set by the line `@def title = "title of the section"`, followed by the line `# {{ get_title }}`, which builds the title with the proper numbering, if needed. Check the [raw file for this page](https://github.com/rmsrosa/booksjl-franklin-template/blob/main/pages/toc.md).
