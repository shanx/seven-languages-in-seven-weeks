# Print the contents of an array four numbers at a time just using each
sixteen_numbers = (2..17).to_a
tmp = []
sixteen_numbers.each do |n|
    tmp.push(n)
    if tmp.length >= 4 
        puts tmp.join(', ')
        tmp.clear
    end
end

# Now do the same using each_slice from Enumerable
sixteen_numbers = (2..17).to_a
sixteen_numbers.each_slice(4) {|n| puts n.join(', ')}
