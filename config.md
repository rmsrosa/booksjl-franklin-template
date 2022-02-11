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
show_toc = true
page_numbering = true
toc_on_index = false

# menu variables
always_collapse = false
show_github = true
github_repo = "https://github.com/rmsrosa/booksjl-franklin-template"

# menu items
menu = [
    "pages/intro*",
    "PART I*" => [],
    "Menu bar" => [
        "pages/menu_location",
        "pages/menu_configuration"
    ],
    "Navigation" => [
        "pages/nav_location",
        "pages/nav_configuration"
    ],
    "PART II*" => [],
    "pages/math_and_code",
    "Appendix*" => [],
]
+++

# navigation links
+++
nav_on_top = true
nav_on_bottom = true
+++
