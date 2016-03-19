system "clear"

def line_dec
  print "\n"
  print "*********************************************************\n"
  print "\n"
end


require 'pp'


################################################################################
#
#  understanding .max_by(&:price) the to_proc and symbol
#
################################################################################




class Ticket
  
  attr_accessor :other_price

  attr_accessor :price_that_is_long
  
  # this is a class method, instance methods don't have access to it as far
  # as i can tell.
  def Ticket.most_expensive(*tickets)
  
  print "\n"

  puts "These are the tickets:"

  print "\n"

  pp tickets

  print "\n"

  # to be honest i'm not sure exactly how these are equivelent but i'm assuming
  # they will eventually go over it and then i will have a more firm grasp on the
  # subject. 

  puts tickets.max_by(&:other_price).inspect

#  puts tickets.max_by { |i| puts "#{i} = #{i.price}" }.inspect
#  you have to put in the i.other_price in order for it to compare
#  with everything otherwise it just grabs the first method and compares it
  puts tickets.max_by{|i| i.other_price }.inspect

  print "\n"

  puts tickets.max_by(&:other_price)

  a = tickets.max_by{|i| puts "#{i} = #{i.other_price}" }

  puts a

  print "\n"

end

  
end





aa = Ticket.new
bb = Ticket.new
cc = Ticket.new

# what if there is another list of methods to sort through how does max_by{} know which one to sort through?

cc.other_price = 17.00
aa.other_price = 12.00
bb.other_price = 10.00

#aa.price_that_is_long = 15.66
#bb.price_that_is_long = 13.57
#cc.price_that_is_long = 12.45

Ticket.most_expensive(aa,bb,cc)
#Ticket.most_expensive("xomething")

puts aa


print "\n"

puts "cc.responds_to?('most_expensive'): #{cc.methods}"

print "\n"

















































