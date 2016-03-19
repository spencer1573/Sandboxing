
# most compact yet unreadable verision
=begin
print "diff hello put celsius: "
puts ((gets.to_i) * 9 / 5) + 32
=end


print "diff hello put celsius: "
fahr = ((gets.to_i) * 9 / 5) + 32

fh = File.new("temp2.out", "w")
fh.puts fahr
fh.close

