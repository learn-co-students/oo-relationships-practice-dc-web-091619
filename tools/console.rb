require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



tonys = Bakery.new("Tony's")
jonnys = Bakery.new("Jonny's")


chocolate_cake = Dessert.new("chocolate cake", tonys)
flan = Dessert.new("flan", tonys)
ice_cream = Dessert.new("ice cream", jonnys)

ing1 = Ingredient.new("chocolate", 100, chocolate_cake)
ing2 = Ingredient.new("flour", 500, chocolate_cake)
ing3 = Ingredient.new("milk", 700, chocolate_cake)
ing4 = Ingredient.new("eggs", 400, chocolate_cake)
ing5 = Ingredient.new("caramel", 200, flan)
ing6 = Ingredient.new("bread", 400, flan)
ing7 = Ingredient.new("nutmeg", 600, flan)
ing8 = Ingredient.new("sugar", 800, flan)
ing9 = Ingredient.new("chocolate sprinkles", 1000, ice_cream)
ing10 = Ingredient.new("chocolate ice cream", 500, ice_cream)
ing11 = Ingredient.new("chocolate sugar", 700, ice_cream)




binding.pry
0