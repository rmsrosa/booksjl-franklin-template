@def title = "Welcome"

@def nav = false
# {{ title }}

This website introduces and demonstrates an adaptation to [Franklin.jl](https://franklinjl.org) of the CSS layout used in the package [Books.jl](https://books.huijzer.xyz), at version 1.2.2.

{{ if toc_on_index }}
  ## Table of Contents

  {{ menubar }}

{{ end }}