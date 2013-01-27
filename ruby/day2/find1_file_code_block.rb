# Opening a file without a block
f = File.open('test_file.txt')
puts f.read()
f.close()

# Opening a file with a block
File.open('test_file.txt') {|f| puts f.read}

# Benefit of using code block as that file is automatically closed at end of block
