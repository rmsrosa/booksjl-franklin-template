@def title = "Math and Code in Franklin"

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

## No Plot

```!
import Pkg
Pkg.activate("pages")
```

```julia:ex_show
x = 0.0:0.01:2pi
y = sin.(2x) + sin.(5x);
```
