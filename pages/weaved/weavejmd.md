@def title = "Weaved Julia Markdown"

# {{ get_title }}


This page was generated from a **julia markdown script**, automatically converted to markdown with [Weave.jl](https://github.com/JunoLab/Weave.jl). The conversion happens when the menu is constructed.

## Julia chunk

Here is a julia chunk:

```julia
x = 1
```

```
1
```





## Plot

```julia
using Plots
```


```julia
x = 0.0:0.01:2pi
y = sin.(2x) + sin.(5x)
plot(x, y)
```

\fig{images/weavejmd_3_1.png}
