#1.p21.0_load see page 21 of Well Grounded Rubyist

#http://stackoverflow.com/questions/837123/adding-a-directory-to-load-path-ruby
#The Ruby load path is very commonly seen written as $:
# "<<" means push whatever is to the right of it which happens
# to be "."

$: << "."

puts "this is something diff"
load "../1.p21.1_to_load.rb"
require "1.p21test/from_load.rb"


print $:

=begin 
************************************************************/
this is the output of this program:
this is something diff
this works (from to_load)
this loads from a folder up
["/Users/s/.rbenv/versions/2.1.0/lib/ruby/site_ruby/2.1.0", 
"/Users/s/.rbenv/versions/2.1.0/lib/ruby/site_ruby/2.1.0/x86_64-darwin13.0", 
"/Users/s/.rbenv/versions/2.1.0/lib/ruby/site_ruby", 
"/Users/s/.rbenv/versions/2.1.0/lib/ruby/vendor_ruby/2.1.0", 
"/Users/s/.rbenv/versions/2.1.0/lib/ruby/vendor_ruby/2.1.0/x86_64-darwin13.0", 
"/Users/s/.rbenv/versions/2.1.0/lib/ruby/vendor_ruby", 
"/Users/s/.rbenv/versions/2.1.0/lib/ruby/2.1.0", 
"/Users/s/.rbenv/versions/2.1.0/lib/ruby/2.1.0/x86_64-darwin13.0", 
"."]
************************************************************/	
=end 

# so what is happening according to my understanding is that
# require is looking in ($:) which is in all these folders for
# "1.p20test/from_load.rb"  
