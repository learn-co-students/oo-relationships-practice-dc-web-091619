# #### Bakery

# >>>>> #ingredients
#   - should return an array of ingredients for the bakery's desserts
# >>>>> #desserts
#   - should return an array of desserts the bakery makes
# - #average_calories
#   - should return a number totaling the average number of calories for the desserts sold at this bakery
# >>>>> .all
#   - should return an array of all bakeries
# >>>>> #shopping_list
#   - should return a string of names for ingredients for the bakery

class Bakery
    @@all = []
    attr_accessor :bakery
    def initialize(bakery)
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        self.desserts.collect do |dessert|
            dessert.ingredient
        end
    end
    
    def shopping_list
        self.ingredients.map do |ingredient|
            ingredient.name
        end
    end

    def desserts
        Desserts.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def average_calories
        self.desserts
    end

end