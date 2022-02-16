using Weave
using Literate

@delay function hfun_menubar()
    menu = pagevar("config.md", :menu)
    isnothing(menu) && return ""
    page_numbering = pagevar("config.md", :page_numbering) === true
    toc = build_toc(menu, page_numbering)
    getfield.(last.(toc), :title)
    io = IOBuffer()

    write(
        io,
        """
        <div class="books-menu-content">
        """,
    )
    for entry in last.(toc)
        link = entry.filename === nothing ? "" : "/$(entry.filename)"
        write(
            io,
            """
                <div class="menu-level-$(entry.level)">
                <li><a href=$link>$(entry.title)</a></li>
                </div>
            """,
        )
    end
    write(
        io,
        """
        <div>
        """,
    )

    return String(take!(io))
end

@delay function hfun_get_title()
    menu = pagevar("config.md", :menu)
    filename = locvar(:fd_rpath)
    isnothing(menu) && return pagevar(filename, :title)

    filename_noext =
        occursin('.', basename(filename)) ? filename[1:prevind(filename, findlast('.', filename))] :
        filename

    page_numbering = pagevar("config.md", :page_numbering) === true
    toc = build_toc(menu, page_numbering)
    entries = toc[map(x -> x.filename, last.(toc)).==filename_noext]
    return length(entries) == 1 ? only(last.(entries)).title : "Title not found"
end

@delay function hfun_navigation()
    io = IOBuffer()

    menu = pagevar("config.md", :menu)
    isnothing(menu) && return String(take!(io))

    filename = locvar(:fd_rpath)

    filename_noext =
        occursin('.', filename) ? filename[1:prevind(filename, findlast('.', filename))] :
        filename

    page_numbering = pagevar("config.md", :page_numbering) === true
    toc = build_toc(menu, page_numbering)

    prevnext = build_prevnext(toc)
    entry = prevnext[first.(prevnext).==filename_noext]
    length(entry) == 1 || return String(take!(io))
    prev, next = last(only(entry))

    if prev !== nothing || next !== nothing
        write(
            io,
            """
            <div class="navbar">
                <p id="nav-prev" style="text-align: left;">
            """,
        )
    end

    if prev !== nothing
        prev_link = "/$prev"
        prev_title = only(last.(toc[getfield.(last.(toc), :filename).==prev])).title
        write(
            io,
            """
            <a class="menu-level-1" href="$prev_link">$prev_title <kbd>←</kbd></a>
            """,
        )
    end

    if next !== nothing
        next_link = "/$next"
        next_title = only(last.(toc[getfield.(last.(toc), :filename).==next])).title
        write(
            io,
            """
            <span id="nav-next" style="float: right;">
                <a class="menu-level-1" href="$next_link"><kbd>→</kbd> $next_title</a>
            </span>
            """,
        )
    end

    if prev !== nothing || next !== nothing
        write(
            io,
            """
                </p>
            </div>
            """,
        )
    end

    return String(take!(io))
end

function hfun_github_repo_link()
    github_repo = pagevar("config.md", :github_repo)
    (github_repo === nothing || github_repo == "") && return ""

    io = IOBuffer()

    write(
        io,
        """
        <a href="$github_repo"><img src="/assets/images/GitHub-Mark-32px.png" alt="GitHub repo" width="18" style="margin:5px 0px" align="left"></a>
        """,
    )

    return String(take!(io))
end

function build_toc(menu, page_numbering = true, level = 1, pre = "")
    toc = []
    isnothing(menu) && return toc
    i = 0
    for m in menu
        if m isa Pair
            if startswith(m.first, '*') || page_numbering === false
                push!(
                    toc,
                    m.first => (
                        filename = nothing,
                        title = "$(lstrip(m.first, '*'))",
                        level = level,
                    ),
                )
                append!(toc, build_toc(m.second, false, level + 1))
            else
                i += 1
                push!(
                    toc,
                    m.first =>
                        (filename = nothing, title = "$pre$i. $(m.first)", level = level),
                )
                append!(toc, build_toc(m.second, page_numbering, level + 1, "$pre$i."))
            end
        else
            if startswith(m, '*') || page_numbering === false
                filename = lstrip(m, '*')
                if startswith(filename, "_weave")
                    filename = weave_it(filename)
                elseif startswith(filename, "_literate")
                    filename = literate_it(filename)
                end
                filename_noext =
                    occursin('.', filename) ?
                    filename[1:prevind(filename, findlast('.', filename))] : filename
                title = pagevar("$(lstrip(filename, '*'))", :title)
                push!(toc, m => (filename = filename_noext, title = title, level = level))
            else
                i += 1
                filename = m
                if startswith(m, "_weave")
                    filename = weave_it(filename)
                elseif startswith(m, "_literate")
                    filename = literate_it(filename)                
                end
                title = pagevar("$filename", :title)
                filename_noext =
                    occursin('.', filename) ? m[1:prevind(m, findlast('.', filename))] :
                    filename
                push!(
                    toc,
                    m => (
                        filename = filename_noext,
                        title = "$pre$i. $title",
                        level = level,
                    ),
                )
            end
        end
    end
    return toc
end

function build_toc()
    menu = pagevar("config.md", :menu)
    isnothing(menu) && return nothing
    page_numbering = pagevar("config.md", :page_numbering) === true
    toc = build_toc(menu, page_numbering)
    return toc
end

function build_prevnext(toc)
    prevnext = []
    isnothing(toc) && return prevnext
    prev = nothing
    ftoc = filter(x -> x.filename !== nothing, last.(toc))
    for i = 1:length(ftoc)-1
        push!(prevnext, ftoc[i].filename => (prev = prev, next = ftoc[i+1].filename))
        prev = ftoc[i].filename
    end
    push!(prevnext, ftoc[end].filename => (prev = prev, next = nothing))
    return prevnext
end

function weave_it(filename)
    isfile(filename) || return ""
    out_path = replace(dirname(filename), "_weave/" => "weaved/", count = 1)
    fig_path = "images"
    doctype = "github"
    weaved_filename = replace("$out_path/$(basename(filename))", r"(?:.jl|.jmd)$" => ".md")
    if mtime(filename) > mtime("$weaved_filename")
        weave(filename; out_path, fig_path, doctype)
        tmppath, tmpio = mktemp()
        open("$weaved_filename", "r") do io
            for line in eachline(io, keep = true)
                if (m = match(r"^#\s+(.*)$", line)) !== nothing
                    line = "@def title = \"$(m.captures[1])\"\n\n# {{ get_title }}\n\n"
                elseif (m = match(r"^!\[\]\((.*)\)$", line)) !== nothing
                    line = "\\fig{$(m.captures[1])}\n"
                elseif (m = match(r"^!\[(.*)\]\((.*)\)$", line)) !== nothing
                    line = "\\figalt{$(m.captures[1])}{$(m.captures[2])}\n"
                end
                write(tmpio, line)
            end
        end
        close(tmpio)
        mv(tmppath, "$weaved_filename", force=true)
        if isdir("$out_path/$fig_path/")
            destination = "_assets/$(weaved_filename[1:end-3])/code/$fig_path"
            mkpath(destination)
            mv("$out_path/$fig_path", destination, force = true)
        end
    end

    return weaved_filename[1:end-3] # remove extension ".md"
end

function literate_it(filename)

    isfile(filename) || return ""
    out_path = replace(dirname(filename), "_literate/" => "literated/", count = 1)
    fig_path = "images"
    flavor = Literate.FranklinFlavor()
    literated_filename = replace("$out_path/$(basename(filename))", r".jl$" => ".md")
    if mtime(filename) > mtime("$literated_filename")
        Literate.markdown(
            filename,
            out_path,
            execute=true,
            credit=false,
            flavor = flavor
        )

        tmppath, tmpio = mktemp()
        open("$literated_filename", "r") do io
            for line in eachline(io, keep = true)
                if (m = match(r"^#\s+(.*)$", line)) !== nothing
                    line = "@def title = \"$(m.captures[1])\"\n\n# {{ get_title }}\n\n"
                elseif (m = match(r"^!\[\]\(.*\)$", line)) !== nothing
                    line = "\\fig{$(m.captures[1])}\n"
                elseif (m = match(r"^!\[(.*)\]\((.*)\)$", line)) !== nothing
                    line = "\\figalt{$(m.captures[1])}{$(m.captures[2])}\n"
                end
                write(tmpio, line)
            end
        end
        close(tmpio)
        mv(tmppath, "$literated_filename", force=true)

        if isdir("$out_path/$fig_path/")
            destination = "_assets/$(literated_filename[1:end-3])/code/$fig_path"
            mkpath(destination)
            mv("$out_path/$fig_path", destination, force = true)
        end
    end

    return literated_filename[1:end-3] # remove extension ".md"
end

function hfun_buildmenu()
    menu = pagevar("config.md", :menu_items)
    isnothing(menu) && return ""
    return menu
end