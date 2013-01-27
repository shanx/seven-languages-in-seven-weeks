# Can you use Ruby arrays as stacks? What other data structures do arrays support?

puts 'Array as stack'
stack = []
stack.push(1)
stack.push(2)
puts stack.pop
puts stack.pop

puts 'Array as queue'
queue = []
queue.push(1)
queue.push(2)
puts queue.slice!(0)
puts queue.slice!(0)

# Dequeues, etc possible
