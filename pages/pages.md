@def title = "Pages"

# {{ get_title }}

1. The pages for the book must be in either of the folders `pages/`, `_weave/`, or `_literate/`, to be properly processed. They don't need to be in the root of each of these subfolders; they can be further nested as desired.

1. Depending on the folder, the file is executed and rendered by either [Franklin.jl](https://github.com/tlienart/Franklin.jl), [Weave.jl](https://github.com/JunoLab/Weave.jl), or [Literate.jl](https://github.com/fredrikekre/Literate.jl), respectively.

1. The file can be in either Franklin's Markdown, Weave's/Juno's Markdown, Literate's Markdown, or a plain julia script format with markdown-like comments.

1. The title on each Franklin's markdown page is set by the line `@def title = "Title of the Section"`, followed by the line `# {{ get_title }}`, which builds the title with the proper numbering, if needed. Check the [raw file for this page](https://github.com/rmsrosa/booksjl-franklin-template/blob/main/pages/pages.md).

1. The title on the pages within `_weave/` or `_literate` should be defined as usual for markdown files, with `# Title of the Section`. These will be processed to the format above, to be properly rendered by Franklin.
