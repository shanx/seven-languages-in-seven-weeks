// Fibonacci sequence, find the n-th fibonacci number

// Using a loop
n := (File standardInput readLine) asNumber

fibloop := method(n,
    seq := list(1, 1)

    for(i, seq size, n,  
        seq append(seq at(i-2) + seq at(i-1))
    )

    seq at(n-1)
)

// Using recursion
fibrec := method(n,
    if(n==1) then(return 1)
    if(n==2) then(return 1)
    return fibrec(n-2) + fibrec(n-1) 
)

("[Loop] Fibonacci number " .. n .. " is " .. fibloop(n)) println
("[Reqursion] Fibonacci number " .. n .. " is " .. fibrec(n)) println
