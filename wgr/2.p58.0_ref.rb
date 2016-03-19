#references


require "pp"

system "clear"

def line_dec
  print "\n"
  print "*********************************************************\n"
  print "\n"
end

def change_string(a)
  a.replace("this is a new string")
end

s = "this is original"





print "\n"

puts "this is the value of s now: "
puts s

print "\n"

puts "this is s after .dup is applied: "
change_string(s.dup)
puts s

print "\n"

puts "this is the value of s changed: "
change_string(s)
puts s

print "\n"


# this will throw and error because you can't do a .replace method
# on a string that is frozen.
=begin
puts "this is a string that is frozen: "
b = "this is original content of b"
change_string(b.freeze)
puts b
=end


# this is apparently one of the only ways that you can modify a frozen array

this_array = ["one", "two", "three"]

this_array.freeze

this_array[2].replace("something)=")

print "\n"

puts "this is the array after one of its members has been replaced: "
pp this_array

print "\n"

# notice that this does not replace if you do it this ways

# we have to take out this line or there is an error
#this_array[2] = "this new thing"

print "\n"

puts "this is the array when we have tired to change the array using = "
pp this_array

line_dec

# >>> this demonstrates that you can't add objects to a frozen array, you can only 
# replace them.

new_array = ["two"]
new_array.freeze

# the line below doesn't work because the 2nd place in the array is not 
# taken up by an opject so replace has nothing to replace
#new_array[1].replace("one")

puts "this is the new array with a one put in once its been frozen: "
pp new_array


print "\n"


# can't delete this way

delete_array = ["two", "three"]
delete_array.freeze

# you can't delete an existing object from a frozen array
#delete_array.delete_at(1)

puts "attempted to delete from an array: "
pp delete_array



print "\n"


insert_to_arr = ["one"]
insert_to_arr.freeze

# you can't add to a frozen array this way
#insert_to_arr.insert(1, "apple")

puts "this is what happens when you try to insert: "
pp insert_to_arr

line_dec
line_dec

################################################################################
#
#  this is how you try to delete a frozen array position that has been frozen
#
################################################################################

foo = "three"
foo.freeze

delete_piece = ["one",foo,"three"]

delete_piece[1].freeze
puts "this says weather delete_piece[1] is initially frozen:"
puts delete_piece[1].frozen?


#delete_piece.delete_at(1)

delete_piece[1] = "something else"

puts "this is when you try to delete something that has been frozen specifically
in an array: "
pp delete_piece
puts "this says weather delete_piece[0] is frozen:"
puts delete_piece[0].frozen?
puts "this says weather delete_piece[1] is frozen:"
puts delete_piece[1].frozen?
puts "this says weather delete_piece[2] is frozen:"
puts delete_piece[2].frozen?

# it looks like this is how you push to an array
delete_piece << "something"
pp delete_piece




line_dec
line_dec

puts "if you look at the code this is probably one of the most important things
to understand about how variables work and why .clone isn't such a bad idea:"
a = [1,2,3]
b = a
b << 4

p a
p b


line_dec


# this successfully addes to the middle string

test_array = ["zillow", "zonk", "zune"]
test_array.freeze

test_array[1] << " added"

puts "this is a test array: "
pp test_array












line_dec


































































