// Write a prototype for a two-dimensional list. The dimx(x,y) method should allocate a list of y lists that are x elements long, set(x, y, value) should set a value, and get(x, y) should return that value

Matrix := Object clone

Matrix data := list()

Matrix dim := method(x, y,
    l := List clone setSize(y)
    data = l map(e, List clone setSize(x))
)

Matrix set := method(x, y, value,
    (data at(y)) atPut(x, value)
)

Matrix get := method(x, y,
    (data at(y)) at(x)
)


m := Matrix clone
m dim(5, 10)
m data println

m set(1, 1, 123)
m data println

m get(1, 1) println
m get(2, 2) println

