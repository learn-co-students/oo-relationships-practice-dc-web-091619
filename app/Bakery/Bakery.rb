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

## Bakery > Dessert > Ingredient
## you want to start to work with the highest hierarchy because it will not depend on other classes.

class Bakery

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def ingredients
        Ingredient.all.select do |ingredient|
            ingredient.bakery == self
        end
    end
    
    def shopping_list
        self.ingredients.map do |ingredient|
            ingredient.name
        end
    end

    # should return a number// totaling the average number of calories for the desserts sold at this bakery
    def average_calories
        total = 0
        self.desserts.each do |dessert|
            total + dessert.calories / dessert.ingreidents.length
        end
        total
    end

end