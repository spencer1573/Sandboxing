system "clear"

def line_dec
  print "\n"
  print "*********************************************************\n"
  print "\n"
end

print "\n"


################################################################################
#
#  The purpose of this is to show what i've learned about attr_* methods
#
################################################################################


# these two sets of classes do the same thing

class X
  def little_x=(little_x)
    @little_x = little_x
  end

  def little_x
    @little_x
  end
end

class X_same
  attr_accessor :little_x_same
end

#then make each of those classes inherit traits into other classes

class Y < X
  def little_y=(little_y)
    @little_y = little_y
  end

  def little_y
    @little_y
  end
end

class Y_same < X_same
  attr_accessor :little_y_same
end

#notice how i'm calling Y not x where the little_x method was created
y = Y.new

y.little_x = "something xsmall"

puts "y.little_x inherited from X:      #{y.little_x}"


#now i'm calling the classes that used attr_accessor
y_attr = Y_same.new

y_attr.little_x_same = "this is in this box"

puts "y_attr.little_x_same from X_same: #{y_attr.little_x_same}"