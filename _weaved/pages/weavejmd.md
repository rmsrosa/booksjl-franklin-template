# Weaved Julia Markdown

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
using Winston
```


```julia
x = 0.0:0.01:2pi
y = sin.(2x) + sin.(5x)
plot(x, y)
```

![](figures/weavejmd_3_1.png)