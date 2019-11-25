require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#write your test code in here

binding.pry

puts "Let's go to space!" # just in case pry is buggy and exits
