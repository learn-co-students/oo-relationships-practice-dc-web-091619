# #### Desserts

# >>>> #ingredients
#   - should return an array of ingredients for the dessert
# >>>> #bakery
#   - should return the bakery object for the dessert
# >>>> #calories
#   - should return a number totaling all the calories for all the ingredients included in that dessert
# >>>> .all
#   - should return an array of all desserts

class Desserts

    @@all = []
    attr_accessor :name, :bakery, :ingredient

    def initialize(name, bakery, ingredient)
        @name = name
        @bakery = bakery
        @ingredient = ingredient
        @@all << self
    end

    def ingredients
        Ingredients.all.select do |ingredient|
            ingredient.dessert == self
        end
    end

    def bakery
        self.bakery
    end

    def calories
        self.ingredients.reduce(0) do |memo, ingredient|
            memo = memo + ingredient.calories
        end
        memo
    end

    def self.all
        @@all
    end
    
end
