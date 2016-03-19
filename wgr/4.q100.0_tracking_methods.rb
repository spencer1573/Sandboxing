#write a program that tracks if a program looks at the class or module method first

system "clear"



module M 

  def report
    puts "'report' method in module M"
  end

end

class C

  include M 
end

class D < C
end

obj = D.new

print "\n"

obj.report

print "\n"



module M1
  def report
    puts "'report' from module M1"
  end
end

module M2
  def report
    puts "'report' from module M2"
  end
end


class A
  include M1
  include M2
  # even if you add it a second time it has no effect! including anything twice does
  # nothing
  include M1
end

x = A.new

# this demonstrates that we use the latest added module when there are two
# methods with the same name in two different modules
x.report

print "\n"