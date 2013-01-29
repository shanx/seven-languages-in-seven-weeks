line_num = 0

File.open(ARGV[0]).each do |line|
    line_num += 1

    if /#{ARGV[1]}/.match(line) != nil
        print "#{line_num} #{line}"
    end 
end
