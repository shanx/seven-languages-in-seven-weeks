// Write a program to add up all of the numbers in a two-dimensional array

array := list(list(1, 2), list(4, 5))
array2 := list(list(1, 2, 3), list(4, 5, 6))

sum := method(outer,
    sum := 0
    outer foreach(inner, 
        inner foreach(n,
            sum = sum + n
        )
    )
    sum
)

sum(array) println
sum(array2) println

