

require 'pp'
require 'yaml'


obj = Object.new

def obj.something(x)
  x * 2
end

puts obj.something(1)

# this will throw an error ***********
#obj.something(1,2)


def obj.ninja_eat(a,b,*x)
  # p and pp seem to show the same thing for array's
  p a,b,x
  pp a,b,x
end

arg = {1 => 2,"a" => "b"} #,2,3,[4,3,"b"],5,[6, 4,"a"],40

arg2 = 2,3,[4,3,"b"],5,[6, 4,"a"],40


# this is how you really show what happens when you get multiple arguements
obj.ninja_eat(1,2,3,4,5,6)


#this produces an error, when you assign a 1 as a variable
=begin
def default(1)
  puts "what happens?"
end
=end


# showing that c is trumped by whatever is passed in, and the default value
# goes away
def default(a,b,c=2)
  puts "c should equal 3 now: "
  puts c
end

default(1,2,3)