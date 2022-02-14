# Weaved Julia Script



This page was generated from a **julia script**, automatically converted to markdown with [Weave.jl](https://github.com/JunoLab/Weave.jl). The conversion happens when the menu is constructed.



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
using Winston

x = 0.0:0.01:2pi
y = sin.(2x) + sin.(5x)
plot(x, y)
```

![](figures/weavejl_1_1.png)
