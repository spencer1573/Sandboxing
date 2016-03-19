

# this shows how the local variable x DOES NOT get modified

def say_hello
  x = "hello"
  puts "this is x from the program: " + x
# 1) add this line below
#  return x
end

def say_goodbye
  x = "goodbye"
  puts "this is x at first: " + x

  say_hello
# 2) add replace the line above with the line below
#  x = say_hello
  
  puts "x now equals: " + x
end

# do the two things in the comment to get the program to pass a local variable

say_goodbye



def line_dec
  print "\n"
  print "*********************************************************\n"
  print "\n"
end

line_dec

a = "hello"
b = a
puts "this is a before replace: " + a
puts "this is b before replace: " + b

a.replace("Guug")

print "\n"

puts "this is a: " + a
puts "this is b: " + b

line_dec


# get_to_work demonstrates the same thing shown above simply exactly what
# .replace is capable of

def get_to_work
  a = "old thing"
  b = a
  puts "this is a before: " + a
  puts "this is b before: " + b

  a.replace("new thing")
#   a = a + "str"

  print "\n"

  puts "this is a now:    " + a
  puts "this is b now:    " + b
end

get_to_work

line_dec

