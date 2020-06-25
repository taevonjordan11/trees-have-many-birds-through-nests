require 'pry'
require './lib/tree.rb'
require './lib/bird.rb'
require './lib/nest.rb'
##########################
b1 = Bird.new("Blue Jay")
b2 = Bird.new("Falcon")
b3 = Bird.new("Eagle")

t1 = Tree.new("Oak Tree")
t2 = Tree.new("Green Tree")

nest1 = Nest.new(b1,t1)
nest2 = Nest.new(b2,t2)
nest3 = Nest.new(b3,t2)
nest4 = Nest.new(b3,t1)









binding.pry





puts "Back to work!"
