system "clear"

def line_dec
  print "\n"
  print "*********************************************************\n"
  print "\n"
end


require 'pp'

################################################################################
#
#  include method and raise error, warn, raise exception
#
################################################################################


print "\n"

a = 1,2,3

pp a

print "\n"

#loop test
for iterate in -3..6
  if a.include?(iterate)
    puts "#{iterate} is include? : #{a.include?(iterate)}"
  else
# there are a few things you can do:
    warn "#{iterate} is not included in this array"
#    raise Exception, "put message here"
#     raise ArgumentError, "<this message is the error>"  
  end
end

print "\n"


################################################################################
#
#  :: - its a "connector" access to constants in class keyword "path notation"
#
################################################################################


class Ticket
  A = "this is inside the class"
end



puts "This is a inside the class: #{Ticket::A}"



print "\n"


puts "Math::PI: #{Math::PI}"


print "\n"


# so i'm guessing this is a literal representation of how you call the String class
a = String::new "something made by naming string"
b = String.new "this was made by typing in String.new"


puts a
puts b

print "\n"

puts RUBY_VERSION

print "\n"

puts RUBY_PATCHLEVEL

print "\n"

puts RUBY_RELEASE_DATE

print "\n"

puts RUBY_REVISION

print "\n"

puts RUBY_COPYRIGHT

print "\n"


# notice the two warnings when you do this
A = 1
A = 2


# this is super interesting to me I just found out something about when you 
# refer to variables. basically if we take this example (using code from above)

puts "no warning"
b = Ticket::A
b = b + "on the end"

# we don't get a warning that we are changing the constant because b doesn't go 
# THROUGH "A" it simply refers to the thing that was assigned to A meaning
# its a different packaging if that makes sense. 

print "\n"

puts "somthing".is_a?(Object)
puts "something".is_a?(String)

puts  b.is_a?(Object)
puts b.is_a?(Ticket) # of course not



print "\n"










































