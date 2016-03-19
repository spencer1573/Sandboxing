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

a = 3

puts "a.class: #{a.class}"

print "\n"

puts "Class.new.methods.sort: 

#{Class.new.methods.sort}"

print "\n"

puts "Class.new.methods.count:

#{Class.new.methods.count}"

print "\n"

puts "Class.new.superclass:

#{Class.new.superclass}"

print "\n"

puts "Class.new.singleton_class?

#{Class.new.singleton_class?}"

print "\n"

puts "Class.new.respond_to?('talk')

#{Class.new.respond_to?('talk')}"

print "\n"


puts "Class.superclass

#{Class.superclass}"

print "\n"

puts "Class.superclass.superclass

#{Class.superclass.superclass}"

print "\n"