system "clear"

def line_dec
  print "\n"
  print "*********************************************************\n"
  print "\n"
end

# it has to say "require relative" it can't just say require
require_relative "4.p96.stack_like"
require 'pp'

class Stack
  include Stacklike
end

x = Stack.new

x.stack.push(1,2,3)

print "\n"

pp x.stack

print "\n"