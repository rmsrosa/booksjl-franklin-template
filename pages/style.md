@def title = "Style Sheet and Fonts"

# {{ get_title }}

A good portion, and the inspiration, for the style sheet used here is that of the CSS in [Rik Huijzer](https://github.com/rikhuijzer)'s [Books.jl](https://github.com/JuliaBooks/Books.jl) package.

Some small changes have been made, such as adding a link to the Github repo and the name of the author in the menu bar; slighly casting an overall beige hue to the site; adding an optional background image; adjusting the font sizes; adding an optional top navigation bar; etc.

Those can also be tweaked as you like it, in [`_css/basic.css`](/css/basic.css).

Important elements to notice are the colors, font sizes and background image set in `:root` and `html`.

Another significant change is the font used in code blocks. It is currently set to [JuliaMono-Regular](https://cormullion.github.io/pages/2020-07-26-JuliaMono/). This is included in the repo. It you find that too heavy on RAM (it is about 2.4Mb; think of your readers), you are free to remove the `@font-face { ... }` block and remove `"JuliaMono-Regular"` from the `font-family` list of fonts defined for the `pre`, `code`, `kbd`, and `samp` elements.
