# # Literated Julia Script

# This page was generated from a **julia script**, automatically converted to markdown with [Literate.jl](https://github.com/fredrikekre/Literate.jl). The conversion happens automatically when the menu is constructed.

# ## Julia Dots

# PNG with path relative to site, i.e. `/assets/images/julia-logo-dots-small.png`, but this only works in the Franklin-rendered site:

# ![Julia dots](/assets/images/julia-logo-dots-small.png)

# ## Julia Speeder

# GIF with path relative to file and within `_assets/`, i.e. `../../_assets/images/juliaspeeder32x32.gif`, and postprocessed accordingly, so it works both in Franklin and in Literate:

# ![Julia speeder](../../_assets/images/juliaspeeder32x32.gif)

# ## Math

# Inline, as in $e^{i\pi} = -1$, or in a block:
# $$
# \exp(i\pi) + 1 = 0
# $$

# ## Code chunks

# Here is a julia chunk:

x = 1

# and another:

println("hello world!")

# ## Load file

# Keep in mind that Literate renders this from the root dir, which is different from the way Weave handles it:

pwd()

# With that settled, we can use the proper path (but for some weird reason, I first need to check whether the file exists before attempting to open it, otherwise Literate complains the file does not exist :man_shrugging:):

filename = "_assets/data/wow.txt"

if isfile(filename)
    open(filename) do io
        read(io, String)
    end
end

# ## Plot

using Plots

x = 0.0:0.01:2π
y = sin.(2x) + sin.(5x)

plot(x, y)
