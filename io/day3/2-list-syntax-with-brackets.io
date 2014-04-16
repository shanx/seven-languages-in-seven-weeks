# Create a list syntax that uses brackets.

curlyBrackets := method(
    l := List clone
    call message arguments foreach(
        e,
        l append(e)
    )
)

writeln({1, 2, "I should be a list"})

