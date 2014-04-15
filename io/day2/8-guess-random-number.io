// Write a program that gives you ten tries to guess a random number from 1-100 if you would like give a "hotter" or "colder" after the first guess

TURNS := 10

Guesser := Object clone do(
    init := method(
        self number := Random value(1, 100) round
    )

    isCorrect := method(n,
        self number == n
    )

    isHotter := method(n,
        n < self number 
    )

    isColder := method(n,
        n > self number
    )
)

guesser := Guesser clone

"You have 10 guesses to guess a number I have in memory between 1 and 100" println

number_guessed := false
for(i, 1, TURNS, 
    "Guess #{i}> " interpolate print
    guess := File standardInput readLine asNumber
    if (guess isNan,
        "That is not a number, try again!" println
        continue
    )

    if(guesser isCorrect(guess)) then (
        number_guessed = true
        break
    ) else (
        "#{guess} is not correct" interpolate println
        # Only show hotter/colder after first try
        if (i > 1,
            if(guesser isHotter(guess), "Tip: Hotter!" println)
            if(guesser isColder(guess), "Tip: Colder!" println)
        )   
    )
)

if (number_guessed, "You guessed it in #{i} turns!" interpolate println, "You failed to guess the number after #{TURNS} turns" interpolate println)
