# This file was generated, do not modify it. # hide
x = 0.0:0.01:2π
y = sin.(2x) + sin.(5x)
plot(x, y, title = "A nice wave", titlefont=12, label = false)
savefig(joinpath(@OUTPUT, "sin.svg")) # hide