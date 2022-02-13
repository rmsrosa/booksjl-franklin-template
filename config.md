# start of config vars
+++
prepath = "booksjl-franklin-template"

content_tag = ""
+++

# book variables
+++
book_title = "Franklin's Book Template"
book_subtitle = "Create books with Franklin.jl"
book_author = "Author Name"
book_license = "CC0 1.0 Universal (CC0 1.0) Public Domain Dedication"
license_link = "https://creativecommons.org/publicdomain/zero/1.0/"
book_licensees = ""

# toc variables
page_numbering = true

# menu variables
show_aside = true
show_github = true
github_repo = "https://github.com/rmsrosa/booksjl-franklin-template"

# menu items
menu = [
    "*pages/intro.md",
    "*PART I" => [],
    "Menu bar" => [
        "pages/menu_location",
        "pages/menu_configuration"
    ],
    "Navigation" => [
        "pages/nav_location",
        "pages/nav_configuration"
    ],
    "*PART II" => [],
    "Math and Code" => [
        "pages/math_and_code",
        "pages/weavejmd.jmd",
        "pages/weavejl.jl"
    ],
    "*Appendix" => [],
]
+++

# navigation links
+++
nav_on_top = true
nav_on_bottom = true
+++
