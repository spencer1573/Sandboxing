system "clear"

def line_dec
  print "\n"
  print "*********************************************************\n"
  print "\n"
end




################################################################################
#
#  the Object class and subclasses
#
################################################################################


print "\n"

class A
end

class B < A
end

puts "B.superclass:                                  #{B.superclass}"
puts "B.superclass.superclass:                       #{B.superclass.superclass}"
puts "B.superclass.superclass.superclass:            #{B.superclass.superclass.superclass}"
puts "B.superclass.superclass.superclass.superclass: #{B.superclass.superclass.superclass.superclass}"

print "\n"



puts "this is how many methods a new object will respond to in 
this version of ruby: #{Object.new.methods.count}"

print "\n"


