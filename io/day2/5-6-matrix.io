Matrix := Object clone


Matrix init := method(x, y,
    self data := nil
    self sizeX := 0
    self sizeY := 0
)

Matrix dim := method(x, y,
    data := List clone setSize(x)
    data = data map(e, List clone setSize(y))
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
    (self data at(x)) atPut(y, value)
)

Matrix get := method(x, y,
    (self data at(x)) at(y)
)

Matrix println := method(
    self data println
)

Matrix transpose := method(
    // Create a new Matrix with inverted sizes
    new_matrix := Matrix clone 
    new_matrix dim(self getSizeY, self getSizeX)
    // Copy over all values from the old matrix to the new one
    for(x, 0, self getSizeX - 1,  
        for(y, 0, self getSizeY - 1,
            new_matrix set(y, x, matrix get(x, y))
        )
    )

    new_matrix
)

// 5:  Write a prototype for a two-dimensional list. The dimx(x,y) method should allocate a list of y lists that are x elements long, set(x, y, value) should set a value, and get(x, y) should return that value

matrix := Matrix clone
matrix dim(5, 3)

matrix set(0, 2, 123)
matrix set(3, 1, 456)
matrix println

matrix get(0, 2) println
matrix get(3, 1) println

// 6: Bonus: write a transpose method so that (new_matrix get(y,x)) == matrix get(x,y) on the original list
new_matrix := matrix transpose
new_matrix println

