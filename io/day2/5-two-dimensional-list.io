// Write a prototype for a two-dimensional list. The dimx(x,y) method should allocate a list of y lists that are x elements long, set(x, y, value) should set a value, and get(x, y) should return that value

List2d := Object clone

List2d data := list()

List2d dim := method(x, y,
    l := List clone setSize(y)
    data = l map(e, List clone setSize(x))
)

List2d set := method(x, y, value,
    (data at(y)) atPut(x, value)
)

List2d get := method(x, y,
    (data at(y)) at(x)
)


l := List2d clone
l dim(5, 10)
l data println

l set(1, 1, 123)
l data println

l get(1, 1) println
l get(2, 2) println

