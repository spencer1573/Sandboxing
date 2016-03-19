system "clear"

def line_dec
  print "\n"
  print "*********************************************************\n"
  print "\n"
end


################################################################################
#
#  initialize II
#  Q: how do i send varables to a new instance of a class?
#
################################################################################


print "\n"

class Fish

  def initialize(eyes,fins)
    @eyes = eyes
    @fins = fins
  end

# its good to use this "=" semantics when you are assigning a variable
  def scales=(scales)
    @scales = scales
  end

  def eyes
    @eyes
  end

  def fins
    @fins
  end

  def scales
    @scales
  end

end

x = Fish.new("the_eyes", "the_fins")

puts "setting scales..."
x.scales=(gets)

puts "getting scales:"
puts x.scales




print "\n"