@def title = "Pages"

# {{ get_title }}

1. The pages for the book must be in either of the folders `pages/`, `src/weave/`, `src/literate/`, or `src/jupyter/` in order to be properly processed. They don't need to be in the root of each of these subfolders, they can be further nested as desired.

1. Depending on the folder, the file is executed and rendered by either [Franklin.jl](https://github.com/tlienart/Franklin.jl), [Weave.jl](https://github.com/JunoLab/Weave.jl), or [Literate.jl](https://github.com/fredrikekre/Literate.jl).

1. The files can be in either Franklin's Markdown, Weave's/Juno's Markdown, Literate's Markdown, Jupyter notebook, or plain julia script format with markdown-like comments.

1. The title on each Franklin's markdown page, under `pages/`, is set by the line `@def title = "Title of the Section"`, followed by the line `# {{ get_title }}`, which builds the title with the proper numbering. Check the [raw file for this page](https://github.com/rmsrosa/booksjl-franklin-template/blob/main/pages/pages.md).

1. The title on the pages within `src/weave/`, `src/literate/` or `src/jupyter` should be defined as usual for markdown files, with `# Title of the Section`. These will be processed to the format above, to be properly rendered by Franklin.

1. In a Franklin markdown page (under the `pages/` directory), if you want to refer to a different page and would like the section number to show up in the title, you may use the `hfun_link_section` function defined in [config.md](https://raw.githubusercontent.com/rmsrosa/booksjl-franklin-template/main/config.md). You should use that in Franklin's style. For instance, if you want to refer to Section {{link_section pages/pages}} you should write `{{link_section pages/pages}}`. Of course, if you have set `page_numbering` to false (*c.f.* {{link_section pages/toc}}), then the section number won't be added.

1. In any source page (under the `src/` directory), if you want to refer to a different page and would like the section number to show up in the title, you should write `[title or whatever](pages/pages)`. This will be post-processed (after [Weave.jl](https://github.com/JunoLab/Weave.jl) or [Literate.jl](https://github.com/fredrikekre/Literate.jl)) to the format above (ignoring whatever is in the given `title or whatever`), before [Franklin.jl](https://github.com/tlienart/Franklin.jl) handles it.

1. Each page generated from source files in either `src/weave/`, `src/literate/`, or `src/jupyter/` may contain badge links to associated Jupyter notebooks, for either downloading them or opening them in either [NBViewer](https://nbviewer.org) or [Binder](https://mybinder.org). This can be achieved by the following configuration variables in `config.md`:
    * `show_link_bagdes::Bool`: whether to add any of the link badges to the top of each weaved or literated page;
    * `link_view_source::Bool`: whether to include a badge to view the source used for the current page, if processed by [Weave.jl](https://github.com/JunoLab/Weave.jl) or [Literate.jl](https://github.com/fredrikekre/Literate.jl);
    * `link_download_notebook::Bool`: whether to include a badge to download the associated Jupyter notebook;
    * `link_nbview_notebook::Bool`: whether to include a badge to open the associated Jupyter notebook in [NBViewer](https://nbviewer.org);
    * `link_binder_notebook::Bool`: whether to include a badge to open the associated Jupyter notebook in [Binder](https://mybinder.org);
    * `exec_notebook::Bool`: whether to execute the code or not when generating the notebooks;
    * `website::String`: url of the website, used to properly launch the associated notebook in [NBViewer](https://nbviewer.org).

* In order to have the generated jupyter notebooks work straight out of the box in [Binder](https://mybinder.org), the generated notebooks are post-processed to have their links to `_assets/` and `/pages/` changed to paths relative to the website repo/branch. 
