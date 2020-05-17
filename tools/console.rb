require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

follower1 = Follower.new("bob", 26, "The biz")
follower2 = Follower.new("bob", 26, "The biz")
follower3 = Follower.new("bob", 24, "The biz")

cult1 = Cult.new("Manson", 1969, "We kill piggies", "California")
cult2 = Cult.new("Joh", 1969, "We kill piggies", "Utah")
cult3 = Cult.new("Man", 1969, "We kill piggies", "California")

follower1.cult_join("Manson")
follower2.cult_join("Man")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits