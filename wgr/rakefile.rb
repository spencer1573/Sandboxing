#1.p30.0_rake

#=begin
namespace :admin do
  desc "something"
  task :ree do
    puts "something"	
  end
end
namespace :user do 
  desc "this is the user"
  task :do do
  	puts "this is the user's comment"
  end
end

# i don't know what this means yet i just saw it on here:
# http://stackoverflow.com/questions/1579231/default-task-for-namespace-in-rake
desc "does everything"
task :all => ["admin:ree", "user:do"]

namespace :puts do
  desc "puts each thing"
  task :this do
#  	puts "this worked"
  	Dir['*'].each do |iterate|
  	  next unless "#{iterate}".start_with?("1")
  	  next unless File.file?(iterate) == false
      puts "this folder: #{iterate}"
    end

    puts "put your question below"
    print "> "
    
# --> research that way it gets special <<<<<<<<<<<<<<<<<<<<<<<<<<<start here #
#   same as variable = $stdin.gets
    variable = $stdin.gets
    case variable
    when /s$/
	  # this is just another way of putting
	  puts "pooped an answer :_)" 	
      $stdout.puts("pooped an answer :_)")
      p(/this works too/)
    when /o$/
      puts "didn't poop an answer :(" 
    end

    File.unlink("temp3.out")
    puts "temp 3 has been deleted"
  end
end

#pg 31

namespace :thye do
  namespace :inside do
    desc "thinn"
    task :inside_this do
      puts "something"
    end  
  end
end    





#=end

