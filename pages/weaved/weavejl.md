@def title = "Weaved Julia Script"

# {{ get_title }}




This page was generated from a **julia script**, automatically converted to markdown with [Weave.jl](https://github.com/JunoLab/Weave.jl). The conversion happens automatically when the menu is constructed.



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

x = 0.0:0.01:2π
y = sin.(2x) + sin.(5x)

plot(x, y)
```

\fig{images/weavejl_2_1.png}
