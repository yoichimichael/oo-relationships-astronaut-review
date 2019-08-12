require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



binding.pry

puts "Let's go to space!" # just in case pry is buggy and exits
