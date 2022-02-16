@def title = "Weaved Julia Script"

# {{ get_title }}




This page was generated from a **julia script**, automatically converted to markdown with [Weave.jl](https://github.com/JunoLab/Weave.jl). The conversion happens automatically when the menu is constructed.



## Julia chunk



Here is a julia chunk:

```julia
x = 2
```

```
2
```




## Plot

```julia
using Plots

x = 0.0:0.01:2pi
y = sin.(2x) + sin.(5x)

plot(x, y)
```

\fig{images/weavejl_1_1.png}
