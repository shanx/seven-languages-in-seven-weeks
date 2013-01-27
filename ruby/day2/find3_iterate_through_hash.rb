# Can you iterate through a hash?

# Sure you can, using each with a code block
my_hash = {:first_element => 'test', :second_element => 'test2'}

my_hash.each {|key, value| puts key}
