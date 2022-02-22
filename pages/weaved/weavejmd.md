@def title = "Weaved Julia Markdown"

# {{ get_title }}


This page was generated from a **julia markdown script**, automatically converted to markdown with [Weave.jl](https://github.com/JunoLab/Weave.jl). The conversion happens when the menu is constructed.

## Julia Logo

\figalt{Julia dots}{/assets/images/julia-logo-dots-small.png}

## Math

$$
\exp(i\pi) + 1 = 0
$$

## Code chunks

Here is a julia chunk:

```julia
x = 1
```

```
1
```





and another:

```julia
println("hello world!")
```

```
hello world!
```





## Plot

```julia
using Plots
```


```julia
x = 0.0:0.01:2π
y = sin.(2x) + sin.(5x)
plot(x, y)
```

\fig{images/weavejmd_4_1.png}
