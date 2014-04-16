# Enhance the XML program to handle attributes: if the first argu- ment is a map (use the curly brackets syntax), add attributes to the XML program.  

OperatorTable addAssignOperator(":", "atPutNumber") 

curlyBrackets := method(
    r := Map clone
    call message arguments foreach(arg,
        r doMessage(arg)
        ) 
    r
)
Map atPutNumber := method(
    self atPut(
        call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""), call evalArgAt(1))
)

Builder := Object clone

Builder forward := method(
    attrs := Sequence clone 
    # Check to see if attributes are given for this tag if so add all attributes
    # to attrs string
    first_arg := call message arguments first
    if(first_arg name == "curlyBrackets", 
        doMessage(first_arg) foreach(k, v, 
            attrs appendSeq(" ", k, "=\"", v, "\"")))
    writeln("<", call message name, attrs, ">")
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence", writeln(content)))
    writeln("</", call message name, ">")
)

# Somehow the parser treats using the code directly different than doString
# without doString the map will not have any values when initialized from the same source file
Builder doString("""
    ul(
        li({"color": "red"}, "Io"),
        li("Lua"),
        li("Javascript"))
""")

