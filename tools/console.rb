require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#BAKERY TESTS
#initialize(name, desserts)

pete= Bakery.new("Pete's")
carlos = Bakery.new("Carlos")



#DESSERTS TESTS
# #initialize (name, bakery)
 velvet_cake= Dessert.new("red velvet cake", pete)
lava_cake = Dessert.new("lava cake", carlos)
cookies = Dessert.new("cookies", pete)

#INGREDIENTS TESTS
#(name, dessert)
flour = Ingredient.new("flour", velvet_cake, 10)
chocolate = Ingredient.new("chocolate", lava_cake, 25)
chips = Ingredient.new("chocolate chips", cookies, 15)
c_flour = Ingredient.new("cake flour", lava_cake, 20)


binding.pry
0





