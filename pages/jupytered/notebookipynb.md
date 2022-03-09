
@def title = "Jupyter notebook"

# {{ get_title }}


This page was generated from a [Jupyter](https://jupyter.org) notebook, automatically converted to markdown with [Literate.jl](https://github.com/fredrikekre/Literate.jl). The conversion happens automatically when the menu is constructed.


## Julia Dots

PNG with path relative to site, i.e. `/assets/images/julia-logo-dots-small.png`, but this only works in the Franklin-rendered site:

![Julia dots](/assets/images/julia-logo-dots-small.png)




## Julia Speeder

GIF with path relative to (processed) file but within `_assets/`, i.e. `../../_assets/images/juliaspeeder32x32.gif` and postprocessed accordingly, so it works both in Franklin and in Jupyter, but keep in mind that the notebook is processed by Weave from the directory of the processed file, which is setup to be at the same level of the notebook file to avoid further and special processing:

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




and another

```julia
println("hello world!")
```

```
hello world!
```




## Load file

Keep in mind that Weave renders this from the file dir, which is different from the way Literate handles it:


```julia
pwd()
```

```
"/Users/rrosa/Documents/git_repositories/julia/booksjl-franklin-template/pa
ges/jupytered"
```





With that settled, we can use the proper path:

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
```


```julia
x = 0.0:0.01:2π
y = sin.(2x) + sin.(5x)
plot(x, y)
```

\fig{images/notebookipynb_6_1.png}
