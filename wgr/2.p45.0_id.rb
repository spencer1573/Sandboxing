# *********** pg 45, 46 *************

obj = Object.new
str = "something"

puts "the id of the object is: "
puts "#{obj.object_id}"

puts ""

puts "string id: "
puts "#{"something".object_id}"
puts "#{"something".object_id}"

puts ""

str1 = "hello"
xtr2 = "hello"

puts "string 1 id:"
puts str1.object_id

puts ""

puts "string 2 id:"
puts xtr2.object_id

puts ""

puts "integer id: "
puts "#{100.object_id}"
puts "#{100.object_id}"
puts "#{1000.object_id}"

puts ""

obj1 = Object.new
obj2 = obj1

puts "this is obj1 id:"
puts "#{obj1.object_id}"

puts ""

puts "this is obj2 id:"
puts "#{obj2.object_id}"

puts ""

obj1 = Object.new
obj1 = obj2

def obj1.trueorfalse?
  return false   
end 

def obj2.trueorfalse?
  return true
end

###################################################

# is this a problem for them to have the same id?

###################################################

puts "now obj1.trueorfalse? : "
puts "#{obj1.trueorfalse?.object_id}"

print "\n"

puts "this is obj2.trueorfalse?"
puts "#{obj2.trueorfalse?.object_id}"

print "\n"

###################################################

# i don't get this part either yet ????? why is it
# true when i make them equal to each other?

###################################################


obj2 = obj1

puts "returns true if the two objects do not match:"
puts obj2 !~ obj1




























