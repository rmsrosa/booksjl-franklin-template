using Pkg
Pkg.activate(".")
using Literate

filename = "pages/script.jl"
root = abspath("..")
Literate.markdown(
    filename,
    execute=true,
    flavor = Literate.FranklinFlavor()
)
