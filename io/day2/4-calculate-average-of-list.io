// Add a slot called myAverage to a list that computer the average of all the
// numbers in a list. What happens if there are no numbers in a list?
// > An exception is raised
// (Bonus: Raise an Io exception if any item in the list is not a number)

l := list(1, 2, 3)
list_without_numbers := list("no", "numbers")

List myAverage := method(
    self foreach(i, if(i type != "Number") then(Exception raise(i .. " is not a number")))
    self sum / self size
)

l myAverage println
list_without_numbers myAverage println
