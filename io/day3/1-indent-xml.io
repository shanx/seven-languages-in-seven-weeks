# Enhance the XML program to add spaces to show the indentation structure.

Builder := Object clone

Builder forward := method(
    # Get the last argument if it is a number use it as depth of current layer,
    # If no depth is given we are at depth 0
    # I don't know yet why I need to call cached result here to get the real Number
    last_arg := call message arguments last cachedResult
    if(last_arg type == "Number", depth := last_arg, depth := 0)
    writeln("\t" repeated(depth), "<", call message name, ">")
    call message arguments foreach(
        arg,
        # Forward depth to the next level based on current depth
        arg appendCachedArg(depth + 1)
        content := self doMessage(arg);
        if(content type == "Sequence", writeln("\t" repeated(depth), content)))
    writeln("\t" repeated(depth), "</", call message name, ">")
    )

Builder ul(
    li("Io"),
    li("Lua"),
    li("Javascript"),
    li(
        ul(
            li("Sub 1"),
            li("Sub 2")
        )
    )
)

