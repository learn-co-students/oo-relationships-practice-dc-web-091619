require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
bakery_1 = Bakery.new('bakery_1')
ingredient_1 = Ingredients.new('chocolate')
ingredient_2 = Ingredients.new('chocolate mousse')
ingredient_3 = Ingredients.new('chocolate puding')
ingredient_4 = Ingredients.new('chocolate sprinkles')
ingredient_5 = Ingredients.new('carrot')
ingredient_6 = Ingredients.new('apple')
dessert_1 = Desserts.new('dessert_1', bakery_1)

binding.pry
0