require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

test_bakery1 = Bakery.new("Nick's Bakery")
test_bakery2 = Bakery.new("Graham's Bakery")



test_dessert1 = Dessert.new("chocolate chip cookie", test_bakery1)



test_dessert2 = Dessert.new("vanilla cake", test_bakery2)

test_dessert3 = Dessert.new("pudding", test_bakery1)




test_ingredient1 = Ingredient.new("flour", test_dessert1, 10)

test_ingredient2 = Ingredient.new("basil", test_dessert2, 30)

test_ingredient3 = Ingredient.new("sugar", test_dessert1, 50)


test_ingredient4 = Ingredient.new("salt", test_dessert2, 80)

test_ingredient5 = Ingredient.new("butter", test_dessert1, 100)

test_ingredient6 = Ingredient.new("milk", test_dessert3, 20)

test_ingredient7 = Ingredient.new("brown sugar", test_dessert1, 50)

test_ingredient8 = Ingredient.new("small sugar plums", test_dessert1, 50)




binding.pry
0