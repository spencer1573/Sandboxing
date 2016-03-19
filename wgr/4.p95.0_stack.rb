system "clear"

def line_dec
  print "\n"
  print "*********************************************************\n"
  print "\n"
end

require 'pp'

################################################################################
#
#  the stack
#
################################################################################

print "\n"

module Stacklike
  def stack
    @stack ||= []
  end
  def add_to_stack(obj)
    stack.push(obj)
  end
  def take_from_stack
    stack.pop
  end
end


class TestStack
  include Stacklike
end

x = TestStack.new

puts x.stack

x.stack.push("y")

puts x.stack

x.add_to_stack("obj")

pp x.stack

x.take_from_stack

pp x.stack



################################################################################
#
#  this is how ||= works and doesn't work
#
################################################################################

line_dec

y ||= [1,2]

#if something is already there you can't make it equal to it
y ||= "s"

# you can add to it if nothing is there
y[2] ||= "h"

# and you can push to it
y.push("z")

puts "this is y:"
pp y

print "\n"


s = Stacklike.new