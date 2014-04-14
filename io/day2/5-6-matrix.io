Matrix := Object clone


Matrix init := method(x, y,
    self data := nil
    self sizeX := 0
    self sizeY := 0
)

Matrix dim := method(x, y,
    data := List clone setSize(y)
    data = data map(e, List clone setSize(x))
    self data = data
    self sizeX = x
    self sizeY = y
)

Matrix getSizeX := method(
    self sizeX
)

Matrix getSizeY := method(
    self sizeY
)

Matrix set := method(x, y, value,
    (self data at(y)) atPut(x, value)
)

Matrix get := method(x, y,
    (self data at(y)) at(x)
)

Matrix println := method(
    self data println
)

Matrix transpose := method(
)

// 5:  Write a prototype for a two-dimensional list. The dimx(x,y) method should allocate a list of y lists that are x elements long, set(x, y, value) should set a value, and get(x, y) should return that value

matrix := Matrix clone
matrix dim(5, 3)
matrix println
(matrix getSizeX .. " - " .. matrix getSizeY) println

matrix set(0, 2, 123)
matrix set(3, 1, 456)
matrix println

matrix get(0, 2) println
matrix get(3, 1) println

// 6: Bonus: write a transpose mthoe so that (new_matrix get(y,x)) == matrix get(x,y) on the original list
