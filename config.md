# start of config vars
+++
prepath = "booksjl-franklin-template"

content_tag = ""
+++

# book variables
+++
book_title = "Book Template for Franklin.jl"
book_subtitle = "Create books with Franklin"
book_author = "Ricardo M. S. Rosa"
show_license = true
book_license = "CC0 1.0 Universal (CC0 1.0) Public Domain Dedication"
license_link = "https://creativecommons.org/publicdomain/zero/1.0/"
book_licensees = ""
+++

# menu variables
+++
show_aside = true
show_github = true
github_repo = "https://github.com/rmsrosa/booksjl-franklin-template"
+++

# navigation links
+++
nav_on_top = true
nav_on_bottom = true
+++

# toc variables
+++
page_numbering = true

menu = [
    "*pages/intro",
    "*PART I",
    "Configurations" => [
        "pages/book",
        "pages/menu_bar",
        "pages/toc",
        "pages/navigation",
        "pages/pages",
    ],
    "*PART II",
    "pages/math_and_code" => [
        "pages/franklinmd",
        "_literate/pages/literatejl.jl",
        "_weave/pages/weavejl.jl",
        "_weave/pages/weavejmd.jmd",
    ],
    "*pages/appendix",
]

+++
