
require 'cgi'



system "clear"

def line_dec
  print "\n"
  print "*********************************************************\n"
  print "\n"
end

print "\n"



class TravelIndustries
  def month=(month)

    puts "this is month.scan...inspect   : #{month.scan(/^[0-9]$|^0[0-9]$|^1[0-2]$/).inspect}"


    if month.scan(/^[0-9]$|^0[0-9]$|^1[0-2]$/).inspect == "[]"
      puts "no"
    else
      puts "yes!!!!"
      #so we can assign the character safely
      @month = month.to_i
    end  
  end

  def day=(day)
    # i know i could add a bunch more to the program and put the whole calender
    # so that the answer would change depending on the year but i'm not going to 
    # so i can get through this book which i feel is more important than perfection
    # so we are just going to assume that there can be 31 days in a month

    puts "this is day.scan...inspect: #{day.scan(/^[0-9]$|^0[0-9]$|^1[0-9]$|^2[0-9]$|^3[0-1]$/).inspect}"

    if day.scan(/^[0-9]$|^0[0-9]$|^1[0-9]$|^2[0-9]$|^3[0-1]$/).inspect == "[]"
      puts "no"
    else
      puts "yes!!!!"
      #so we can assign the character safely
      @day = day.to_i
    end
  end

  


  def year=(year)

    # make sure the range is 15-100 or 2015-2100

    puts "this is the year.scan...inspect: #{year.scan(/^1[5-9]$|^[2-9][0-9]$|^100$|^201[5-9]$|^20[2-9][0-9]$|^2100$/).inspect}"

    if year.scan(/^1[5-9]$|^[2-9][0-9]$|^100$|^201[5-9]$|^20[2-9][0-9]$|^2100$/).inspect == "[]"
      puts "no"
    else
      puts "yes!!!!"
      # so its safe to put this year in!!!
      @year = year.to_i
    end
  end  

  def month
    @month
  end

  def day
    @day
  end

  def year
    @year
  end


end  


# fields : These are variables declared at the class level.
# http://stackoverflow.com/questions/2720142/programming-terms-field-member-properties-c






x = TravelIndustries.new



#write a loop that goes through and goes double and single digits for 0-12
#x.month=(gets.chomp) 

=begin
#these are some of my first tests!
for iterate in 0..13
  x.month=(iterate.to_s)
end

for doubles in 0..10
  x.month=("0" + doubles.to_s)
end
=end

=begin
for day_iterate in -2..32
  x.day=(day_iterate)
end

for day_doubles in 0..10
  x.day=(day_doubles)
end
=end


x.year=(gets.chomp)







# here we are just assuming a CGI powered server gave us date in this form:
date = "1/09/2015"

print "\n"

puts "this is the date:  #{date}"

month, day, year = date.split('/')

puts "this is what date.split('/') looks like: #{date.split('/')}"

print "\n"

x.year=(year)
x.day=(day)
x.month=(month)

print "\n"







































