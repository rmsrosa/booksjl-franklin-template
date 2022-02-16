@def title = "Franklin's Markdown"

# {{ get_title }}

As usual with sites built with [Franklin.jl](https://franklinjl.org), you may easily insert math and execute code when desired.

## Math

$$
\exp(i\pi) + 1 = 0
$$

## Code

```!
println("hello world!")
```

## Plot

```!
using Plots
```

```julia:ex_show
x = 0.0:0.01:2pi
y = sin.(2x) + sin.(5x)
plot(x, y)
savefig(joinpath(@OUTPUT, "sin.svg")) # hide
```
\fig{sin}
