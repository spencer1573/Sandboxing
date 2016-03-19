system "clear"

require 'pp'

################################################################################
#
#  exploring "super"
#
################################################################################

print "\n"


class B
  def initialize
    puts super.class
  end
end

pp B.ancestors

print "\n"

a = B.new

print "\n"


#include twice works like i thought.

module W
  def a=(a)
    @a = a
  end

#  def a
#    a
#  end

end

module X
  include W

  def a=(a)
    super
  end

#  def a
#    a
#  end

end

class Y
  include X

  def a=(a)
    super
  end

  def a
    @a
  end

end


turtle = Y.new

turtle.a = 10

p turtle.a
