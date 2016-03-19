print "put your input to the right:  "
ask = gets.chomp

print ask

# so this part told me that the chomp wasn't actually taking off anything from 
# the string like a "/n" which i thought was interesting
p ask

##################################################

# new concept

##################################################


obj = Object.new

def obj.thing_one?
  true
end

def obj.thing_two
  "this is thing two!!!"
end

def obj.thing_three
  "the string from yer dungeon"
end

def obj.thing_four
  "this is thing 4 $$ "
end


puts obj.send("thing_three")

#puts obj.methods.sort

puts obj.respond_to?("thing_thre")

response = "thing_one?"

puts obj.send(response)

print "\n"

puts "this is through __send__: "
puts obj.__send__("thing_two")

print "\n"

##################################################

# so obviously these aren't private methods

##################################################


puts "this is a public_send test: "
puts obj.public_send("thing_four")

print "\n"