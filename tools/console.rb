require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
bakery1 = Bakery.new("name")
bakery2 = Bakery.new("Thompson's")
dessert1 = Dessert.new("cake", bakery1)
dessert2 = Dessert.new("Cucumber Sandwich", bakery2)
ingredient1 = Ingredient.new("cream", dessert1, 50)
ingredient2 = Ingredient.new("sugar", dessert1, 25)
ingredient3 = Ingredient.new("cucumber", dessert2, 15)
bakery1.average_calories
bakery1.ingredients
binding.pry
0