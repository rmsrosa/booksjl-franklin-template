@def title = "Franklin's Markdown"

# {{ get_title }}

As usual with sites built with [Franklin.jl](https://franklinjl.org), you may easily insert math and execute code when desired.

## Julia Logo

![Julia dots](/assets/images/julia-logo-dots-small.png)

## Math

$$
\exp(i\pi) + 1 = 0
$$

## Code chunks

Here is a julia chunk:

```!
x = 1
```

and another:

```!
println("hello world!")
```

## Plot

```!
using Plots
```

```julia:ex_show
x = 0.0:0.01:2π
y = sin.(2x) + sin.(5x)
plot(x, y)
savefig(joinpath(@OUTPUT, "sin.svg")) # hide
```
\fig{sin}