system "clear"

################################################################################
#
#  this shows the power of pre-append 
#
################################################################################

# causes one of the ancestors to be PP::ObjectMixin
require 'pp'

module GetsPutFirst
  def report
    puts "this is 'getsputfirst'"
  end
end

class C
  prepend GetsPutFirst
  def report
    puts "this comes from the class"
  end
end

class B
  include GetsPutFirst
  def report
    puts "this comes from the class"
  end
end

x = C.new

print "\n"

x.report

print "\n"

puts "C:"
pp C.ancestors

print "\n"

# see how the order of the ancestors is different
puts "B:" 
pp B.ancestors
 
print "\n"

















