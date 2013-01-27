random_number = rand(10)
choosen_number = -1

until choosen_number == random_number
    puts 'Guess a number between 1 and 10'
    choosen_number = gets.to_i 

    puts "#{choosen_number} is too high" if choosen_number > random_number
    puts "#{choosen_number} is too low" if choosen_number < random_number
end

puts "You guessed correctly, I had #{random_number} in my mind"
