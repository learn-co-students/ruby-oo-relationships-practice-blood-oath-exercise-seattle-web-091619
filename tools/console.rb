require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

manson_family = Cult.new("Manson Family", "California", 1966, "Please stop eating my children :(")
namson_family = Cult.new("Namson Family", "California", 1967, "No")
chris_hansen_family = Cult.new("Chris Hansen Family", "Stranger's House",2006, "Have a seat over there :[")

john = Follower.new("John", 14, "Don't worry be happy")
tom = Follower.new("Tom", 28, "Hello")
hubert = Follower.new("Hubert", 40, "I have candy")

manson_family.recruit_follower(john)
manson_family.recruit_follower(tom)

hubert.join_cult(chris_hansen_family)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits