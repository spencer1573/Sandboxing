
require 'time'

system "clear"

def line_dec
  print "\n"
  print "*********************************************************\n"
  print "\n"
end

################################################################################
#
#  my class works!
#
################################################################################


class The_class
  def event
    "does..."
  end
end

it = The_class.new

print "\n"

puts "this is putting out the event of the class:"
puts it.event

# this is how you define it quickly i guess? with out doing a variable
puts "but can i just call the class without assigning it to an object it?:"
puts The_class.new.event

print "\n"

################################################################################
#
#  which class method is used? obviously the last one ruby interpreter sees
#
################################################################################

class Two_of_them
  def x
    puts "this one is first"
  end

  def x 
    puts "this one is second"
  end
end

puts "this should return the 2nd:"
Two_of_them.new.x

#re-opening the class
class Two_of_them
  def x
    puts "this is the third that overides them all"
  end
end

puts "this should return the 3rd:"
Two_of_them.new.x

print "\n"

################################################################################
#
#  print the time
#
################################################################################

puts Time.new.strftime("%m-%d-%y-%H:%M:%S")

# this only works when you "require 'time'"
puts Time.new.xmlschema


































