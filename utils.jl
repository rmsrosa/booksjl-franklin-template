

@delay function hfun_menubar()
    io = IOBuffer()

    menu = pagevar("config.md", :menu)
    isnothing(menu) && return ""

    for m in menu

        if m isa Pair
            name = m.first
            subs = m.second

            # Submenu title
            write(
                io,
                """
                <div class="menu-level-1">
                    $name
                </div>
                """
            )

            if length(subs) > 0

                # start of list
                write(
                    io,
                    """<ul class="menu-level-2">
                    """
                )

                # subs items
                for s in subs
                    loc = "$s"
                    title = pagevar("pages/$loc.md", :title)
                    write(io, """
                        <li class="pure-menu-item">
                            <a href="/pages/$loc/" class="pure-menu-link">
                                $title
                            </a>
                        </li>
                        """)
                end

                # end of list
                write(io, "</ul>")
            end
        else
            title = pagevar("pages/$m.md", :title)
            # Submenu title
            write(
                io,
                """
                <div class="menu-level-1">
                    <a href="/pages/$m/" class="pure-menu-link">
                    $title
                    </a>
                </div>
                """
            )
        end
    end
    return String(take!(io))
end

@delay function hfun_navigation()
    locvar(:nav) == false && return ""

    filename = basename(locvar(:fd_rpath))
    ind = findlast('.', filename)
    name = filename[1:prevind(filename, ind)]
    prev, next = nav_prevnext(name)

    io = IOBuffer()

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
        prev_title = pagevar("pages/$prev.md", :title)
        write(
            io,
            """
            <a class="menu-level-1" href="$prev_link"><b>1</b> $prev_title <kbd>←</kbd></a>
            """
        )
    end

    if next !== nothing
        next_link = "/pages/$next"
        next_title = pagevar("pages/$next.md", :title)
        write(
            io,
            """
            <span id="nav-next" style="float: right;">
                <a class="menu-level-1" href="$next_link"><kbd>→</kbd> <b>1</b> $next_title</a>
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

function hfun_nav(page)
    return page[1]
end

function nav_prevnext(filename)
    menu = pagevar("config.md", :menu)
    prev = nothing
    next = nothing
    mfile = nothing
    isnothing(menu) && return prev, next
    for m in menu
        if m isa Pair
            for s in m.second
                if mfile == filename
                    next = s
                    return prev, next
                elseif s == filename
                    mfile = filename
                else
                    prev = s
                end
            end
        else
            if mfile == filename
                next = m
                return prev, next
            elseif m == filename
                mfile = filename
            else
                prev = m
            end
        end
    end
    return prev, next
end
