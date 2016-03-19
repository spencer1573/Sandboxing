system "clear"

def line_dec
  print "\n"
  print "*********************************************************\n"
  print "\n"
end

################################################################################
#
#  modules!
#
################################################################################

print "\n"

module MyFirstModule
  def print_hello
    puts "hello"
  end
end

#MyFirstModule.print_hello

class UsedForInclude
  include MyFirstModule
end

UsedForInclude.new.print_hello

print "\n"