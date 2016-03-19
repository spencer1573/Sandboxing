system "clear"

def line_dec
  print "\n"
  print "*********************************************************\n"
  print "\n"
end

################################################################################
#
#  this is how you create dynamic variables in a class or "instance variables"
#  this demonstrates how you get two different variables under the same class
#
################################################################################


class Instance_demo

#  def set_string(the_string)
#    puts "this sets the info for the string.."
#    @the_string = the_string
#  end

  def get_string
    puts "put the string below:"
    @the_string = gets
  end

  def play_string
    puts "this plays the string:"
    puts @the_string
  end

end



x = Instance_demo.new

x.get_string
x.play_string

print "\n"

y = Instance_demo.new

y.get_string
y.play_string

# no cross object retention
x = Instance_demo.new
puts "no cross object retention: "
x.play_string

puts "this is the value of @the_string: outside of the class"
puts @the_string


print "\n"

################################################################################
#
#  initialization
#
################################################################################


class Init_swai

# this is probably the most annoying whole in ruby it just goes when you put it in it 
# doesn't matter if you call the class or anything  
  puts "anything in here just plays if its not in a def?"

  def initialize
    puts "this goes when it initializes"
  end

  def something
    puts "something else"
  end

end

print "\n"

puts "does this display something?"
x = Init_swai.new






line_dec

























