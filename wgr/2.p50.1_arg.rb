def mixed_asterisk(a,*b,c,d)
  p a,b,c,d
end



puts "this is 1,2,3,4,5,6,7 args:"
mixed_asterisk(1,2,3,4,5,6,7)

print "\n"

puts "this is 1,2,3 args:"
mixed_asterisk(1,2,3)

print "\n"