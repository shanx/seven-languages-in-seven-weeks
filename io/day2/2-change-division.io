// Change / operator to return 0 if denominator is zero

old_div := Number getSlot("/")
Number / = method(n,
    // If denominator is 0 return 0
    if(n==0, return 0)
    return old_div(n)
)
