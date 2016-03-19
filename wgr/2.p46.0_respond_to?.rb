obj = Object.new

#puts obj.talk

puts obj.respond_to?("talk")

#p Object.new.methods.sort

puts obj.respond_to?("!")