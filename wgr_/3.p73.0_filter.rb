

system "clear"

def line_dec
  print "\n"
  print "*********************************************************\n"
  print "\n"
end

print "\n"


class Ticket

  # this is going to make sure first of all we get a decimal
  def price=(number)

# all of these are my attempts to come up with a way to make sure that the 
# variable was numeric. the issue was that if the variable starts out with 
# a number the ruby interpreter just sees the first numbers and then cuts off
# the characters so it doesn't really decide if its numeric
# so for instance
#
#  493dx
#
#  becomes
#  493 
#

=begin
    puts "this displays weather it is the same"
    puts (number.to_s).to_i == number.to_i
    puts "#{(number.to_i).to_s}'s object id is: #{((number.to_i).to_s).object_id}"
    puts "#{number.to_s}'s object id is: #{number.to_s.object_id}"

    puts "we know for a fact this is not true:"
    puts "#{number}" == number

    puts (number.to_i * 1).inspect
    puts number.chomp.inspect
    puts 3.inspect
=end

#    puts (number.to_i * 1).is_a? Numeric

=begin
    if (number).is_a? Integer
      puts "you typed an number:"
      puts "nothing"
    else
      puts "you need to type in a number"
    end
=end

  end

end


#puts "enter in the price below"
#x = Ticket.new

#x.price=(gets)







class Number_box

  def price=(amount)


    # put in regex filter system here
    amount = amount.delete("\n")
    puts "amount inspection: "
    puts amount.inspect
    #
    @price_str = amount.to_s

    @already_has_dot = false
    @price_is_numeric = true
    count_is_too_long = false
    count = 0


    if @price_str.length >= 20
      puts "this is the i length: #{@price_str.length}"
      count_is_too_long = true 
    else
      @price_str.each_char do |i|   
        if i == "."
          if @already_has_dot == true
            @price_is_numeric = false
            break
          else
            @already_has_dot = true
          end
        elsif i == "0" || i == "1" || i == "2" || i == "3" || i == "4" || i == "5" || i == "6" || i == "7" || i == "8" || i == "9"
           puts "middle iteration: #{i}"
        else
          puts "iteration kill: #{i}"
          @price_is_numeric = false
          break
        end
      end
    end

    line_dec

    if count_is_too_long == true
      puts "you need to have less than 20 characters" 
      puts "including a decimal point in your input"
    elsif @price_is_numeric == false
      puts "#{amount.delete("\n")} is not a number" 
    else
      puts "#{amount.delete("\n")} is a number!!!" 
      print "\n"
      puts "price finally equals input"
      @price = amount    
    end

    print "\n"
    
    puts "price inspect: #{@price.inspect}"


=begin
# this only sort of works  
    puts "this is true if its a number hopefully"
    if (@price.to_s).delete("\n") == (@price.to_i).to_s || (@price.to_s).delete("\n") == (@price.to_f).to_s 
      puts true
    else
      puts false
    end

    puts "price.to_s     : #{@price.to_s.delete("\n").inspect}"
    puts "price.to_f.to_s: #{@price.to_f.to_s.inspect}"
    puts "price.to_i.to_s: #{@price.to_i.to_s.inspect}"   
=end


  end

  def price
    @price
  end

end



puts "enter in the price below"
x = Number_box.new
x.price=(gets)


line_dec

puts "a * 100.to_i"
puts ("a" * 100).to_i































































