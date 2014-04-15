Matrix := Object clone do(
    init := method(
        self data := nil
        self sizeX := 0
        self sizeY := 0
    )

    dim := method(x, y,
        data := List clone setSize(x)
        data = data map(e, List clone setSize(y))
        self data = data
        self sizeX = x
        self sizeY = y
    )

    getSizeX := method(
        self sizeX
    )

    getSizeY := method(
        self sizeY
    )

    set := method(x, y, value,
        (self data at(x)) atPut(y, value)
    )

    get := method(x, y,
        (self data at(x)) at(y)
    )

    println := method(
        self data println
    )
)

// 5:  Write a prototype for a two-dimensional list. The dimx(x,y) method should allocate a list of y lists that are x elements long, set(x, y, value) should set a value, and get(x, y) should return that value

"Excersize 5:" println
matrix := Matrix clone do(
    dim(5,3)
    set(0, 2, 123)
    set(3, 1, 456)
)

matrix println

matrix get(0, 2) println
matrix get(3, 1) println

// 6: Bonus: write a transpose method so that (new_matrix get(y,x)) == matrix get(x,y) on the original list
"\nExcersize 6:" println
Matrix transpose := method(
    // Create a new Matrix with inverted sizes, I rather do these operations returning
    // a new object then doing it in place.
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

new_matrix := matrix transpose
new_matrix println

// 7 Write the matrix to a file, and read the matrix from a file
"\nExcersize 7:" println
Matrix save := method(filename, 
    f := File with(filename) remove openForAppending
    f write(self serialized)
    f close
)

Matrix load := method(filename,
     Object doFile(filename)
)

matrix save("matrix.txt")
loaded_matrix := Matrix load("matrix.txt")
loaded_matrix println

