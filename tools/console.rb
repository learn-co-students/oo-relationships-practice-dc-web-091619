require_relative '../config/environment.rb' 

def reload
  load 'config/environment.rb'
end

B1 = Bakery.new("Bakery1")
B2 = Bakery.new("Bakery2")
B3 = Bakery.new("Bakery3")
B4 = Bakery.new("Bakery4")

D1 = Dessert.new("Dissert1", B1)
D2 = Dessert.new("Dissert2", B2)
D3 = Dessert.new("Dissert3", B3)
D4 = Dessert.new("Dissert4", B4)
D5 = Dessert.new("Dissert5", B1)
D6 = Dessert.new("Dissert6", B2)
D7 = Dessert.new("Dissert7", B3)
D8 = Dessert.new("Dissert8", B4)

IN1 = Ingredient.new("Apple", D1, B1, 1)
IN2 = Ingredient.new("Apple sauce", D1, B1, 2)
IN3 = Ingredient.new("Cherry", D2, B2, 3)
IN4 = Ingredient.new("Cherry drizzle", D2, B2, 4)
IN5 = Ingredient.new("Apple mix", D3, B3, 5)
IN6 = Ingredient.new("Cherry milk", D3, B3, 6)
IN7 = Ingredient.new("Melon", D4, B4, 7)
IN8 = Ingredient.new("Melon sauce", D4, B4, 8)
IN9 = Ingredient.new("Melon juice", D5, B1, 9)
IN10 = Ingredient.new("Chocolate", D6, B2, 10)
IN11 = Ingredient.new("Chocolate milk", D7, B3, 11)
IN12 = Ingredient.new("Apple drizzle", D8, B4, 12)

binding.pry
0