@def title = "Weaved Julia Script"

# {{ get_title }}



This page was generated from a **julia script**, automatically converted to markdown with [Weave.jl](https://github.com/JunoLab/Weave.jl). The conversion happens automatically when the menu is constructed.



## Julia Dots



PNG with path relative to site, i.e. `/assets/images/julia-logo-dots-small.png`, but this only works in the Franklin-rendered site:



![Julia dots](/assets/images/julia-logo-dots-small.png)



## Julia Speeder



GIF with path relative to file but within `_assets/`, i.e. `../../_assets/images/juliaspeeder32x32.gif`, and postprocessed accordingly, so it works both in Franklin and in Weave, but keep in mind that this is processed by Weave from the file directory:



![Julia speeder](/assets/images/juliaspeeder32x32.gif)



## Math



Inline, as in $e^{i\pi} = -1$, or in a block:
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




## Load file



Keep in mind that Weave renders this from the file dir

```julia
open("../../_assets/data/wow.txt") do io
    read(io, String)
end
```

```
"Wow, this seems like a cool template!"
```




## Plot

```julia
using Plots

x = 0.0:0.01:2π
y = sin.(2x) + sin.(5x)

plot(x, y)
```

\fig{images/weavejl_3_1.png}
