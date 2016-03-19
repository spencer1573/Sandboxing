require_relative "4.p96.stack_like.rb"

system "clear"

def line_dec
  print "\n"
  print "*********************************************************\n"
  print "\n"
end

print "\n"

class Suitcase

end

class CargoHold

  include Stacklike

  def load_and_report(obj)
    puts "adding #{obj.object_id}..."
    add_to_stack(obj)
  end

  def unload
    take_from_stack
  end

end


ch = CargoHold.new
suitcase1 = Suitcase.new
puts "suitcase1.object_id: #{suitcase1.inspect}"
suitcase2 = Suitcase.new
puts "suitcase2.object_id: #{suitcase2.object_id}"
suitcase3 = Suitcase.new
puts "suitcase3.object_id: #{suitcase3.object_id}"

print "\n"

ch.load_and_report(suitcase1)
ch.load_and_report(suitcase2)
ch.load_and_report(suitcase3)

puts "the first suitcase off the plane is: "
puts "       #{ch.unload.object_id}"
puts "       #{ch.unload.object_id}"
puts "       #{ch.unload.inspect}"
puts "       #{ch.unload.inspect}"

print "\n"