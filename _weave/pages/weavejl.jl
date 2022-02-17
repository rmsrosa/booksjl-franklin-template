#' # Weaved Julia Script

#' This page was generated from a **julia script**, automatically converted to markdown with [Weave.jl](https://github.com/JunoLab/Weave.jl). The conversion happens automatically when the menu is constructed.

#' ## Math

#' $$
#' \exp(i\pi) + 1 = 0
#' $$

#' ## Code chunks

#' Here is a julia chunk:

x = 1

#' and another:

println("hello world!")

#' ## Plot

using Plots

x = 0.0:0.01:2π
y = sin.(2x) + sin.(5x)

plot(x, y)
