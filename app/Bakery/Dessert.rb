# #### Desserts 

# >>>> #ingredients
#   - should return an array of ingredients for the dessert
# >>>> #bakery
#   - should return the bakery object for the dessert
# >>>> #calories
#   - should return a number totaling all the calories 
#     for all the ingredients included in that dessert
# >>>> .all
#   - should return an array of all desserts

require 'pry'

class Dessert

    @@all = []
    attr_accessor :name, :bakery

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def ingredients
        Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end
    end

    def calories
        all_calories = self.ingredients.reduce(0) do |total, ingredient|
            total + ingredient.calories
        end
        all_calories

        # total = 0
        # self.ingredients.each {|ele| total + ele.calories}
        # total   <<<<< returning the total
    end

    def self.all
        @@all
    end
    
end
