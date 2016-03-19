#2.p39.0

#every method call returns a value test

require "pp"
require 'to_bool'

obj = Object.new

def obj.doesNothing
  #should return nothing 
end

def obj.returnsSomething
  return nil
end

def obj.addsboth
  a = 1
  b = 2
  c = 3

  [a,b,c]
end

def obj.price
  5.50
end

def obj.price2
  6.70
end

def obj.name
  "mark"
end

def obj.lastName
  "twain"
end

def obj.else
  "something else"
end

def obj.available?
  1 == 2
end

puts "does nothing: "
pp obj.doesNothing

puts "does something: "
pp obj.returnsSomething

puts "does addsboth: "
pp obj.addsboth

puts "this is the first way: " << obj.name << " " << obj.lastName + " $%.2f." % obj.price

puts "this is using second way:
this is the #{obj.name} #{obj.lastName}
something and the price: 
#{"$%#.2f and also this price $%#.2f" % [(obj.price2), obj.price] }"
# think of the code above like a math problem when the 
# #{...} is there it solves whatever string is inside it to come up with an answer
# %#.2f is just a way of displaying a number to the 2nd decimal point

if obj.available?
  puts "yes i can come!"
else
  puts "no i find myself in yer dungeon"
end

if "a"
  puts "true"
end









