
@delay function hfun_menubar()
    menu = pagevar("config.md", :menu)
    isnothing(menu) && return ""
    numbering = pagevar("config.md", :numbering) === true
    toc = build_toc(menu, numbering)
    getfield.(last.(toc), :title)
    io = IOBuffer()

    write(
        io,
        """
        <div class="books-menu-content">
        """
    )
    for entry in last.(toc)
        link = entry.filename === nothing ? "" : "/pages/$(entry.filename)"
        write(
            io,
            """
                <div class="menu-level-$(entry.level)">
                <li><a href=$link>$(entry.title)</a></li>
                </div>
            """
            )
    end
    write(
        io,
        """
        <div>
        """
    )

    return String(take!(io))
end

@delay function hfun_get_title()
    menu = pagevar("config.md", :menu)
    filename = basename(locvar(:fd_rpath))
    isnothing(menu) && return pagevar(filename, :title)

    ind = findlast('.', filename)
    filename_noext = filename[1:prevind(filename, ind)]

    numbering = pagevar("config.md", :numbering) === true
    toc = build_toc(menu, numbering)

    return only(last.(toc[map(x -> x.filename, last.(toc)) .== filename_noext])).title
end

@delay function hfun_navigation()
    io = IOBuffer()

    menu = pagevar("config.md", :menu)
    isnothing(menu) && return String(take!(io))
    
    filename = basename(locvar(:fd_rpath))

    ind = findlast('.', filename)
    filename_noext = filename[1:prevind(filename, ind)]

    numbering = pagevar("config.md", :numbering) === true
    toc = build_toc(menu, numbering)

    prevnext = build_prevnext(toc)
    @info "toc"
    @info toc
    @info "prevnext"
    @info prevnext
    @info "filename_noext: <$filename_noext>"
    entry = prevnext[first.(prevnext) .== filename_noext]
    length(entry) == 1 || return String(take!(io))
    prev, next = last(only(entry))
    @info "prev: $prev"
    @info "next: $next"

    if prev !== nothing || next !== nothing
        write(
            io,
            """
            <div class="bottom-nav">
                <p id="nav-prev" style="text-align: left;">
            """
        )
    end

    if prev !== nothing
        prev_link = "/pages/$prev"
        prev_title = only(last.(toc[getfield.(last.(toc), :filename) .== prev])).title
        write(
            io,
            """
            <a class="menu-level-1" href="$prev_link">$prev_title <kbd>←</kbd></a>
            """
        )
    end

    if next !== nothing
        next_link = "/pages/$next"
        next_title = only(last.(toc[getfield.(last.(toc), :filename) .== next])).title
        write(
            io,
            """
            <span id="nav-next" style="float: right;">
                <a class="menu-level-1" href="$next_link"><kbd>→</kbd> $next_title</a>
            </span>
            """
        )
    end

    if prev !== nothing || next !== nothing
        write(
            io,
            """
                </p>
            </div>
            """
        )
    end

    return String(take!(io))
end

function build_toc(menu, numbering = true, level = 1, pre = "")
    toc = []
    isnothing(menu) && return toc
    i = 0
    for m in menu
        if m isa Pair
            if endswith(m.first, '*') || numbering === false
                push!(
                    toc,
                    m.first => (
                        filename = nothing,
                        title = "$(rstrip(m.first, '*'))",
                        level = level
                    )
                )
                append!(
                    toc,
                    build_toc(m.second, false, level + 1)
                )
            else
                i += 1
                push!(
                    toc,
                    m.first => (
                        filename = nothing,
                        title = "$pre$i. $(m.first)",
                        level = level
                    )
                )
                append!(
                    toc,
                    build_toc(m.second, numbering, level + 1, "$pre$i.")
                )
            end
        else
            if endswith(m, '*') || numbering === false
                title = pagevar("pages/$(rstrip(m, '*')).md", :title)
                push!(
                    toc,
                    m => (
                        filename = rstrip(m, '*'),
                        title = title,
                        level = level
                    )
                )
            else
                i += 1
                title = pagevar("pages/$m.md", :title)
                push!(
                    toc,
                    m => (
                        filename = m,
                        title = "$pre$i. $title",
                        level = level
                    )
                )
            end
        end
    end
    return toc
end

function build_toc()
    menu = pagevar("config.md", :menu)
    isnothing(menu) && return nothing
    numbering = pagevar("config.md", :numbering) === true
    toc = build_toc(menu, numbering)
    return toc
end

function build_prevnext(toc)
    prevnext = []
    isnothing(toc) && return prevnext
    prev = nothing
    ftoc = filter(x -> x.filename !== nothing, last.(toc))
    for i in 1:length(ftoc)-1
        push!(prevnext, ftoc[i].filename => (prev = prev, next = ftoc[i+1].filename))
        prev = ftoc[i].filename
    end
    push!(prevnext, ftoc[end].filename => (prev = prev, next = nothing))
    return prevnext
end
