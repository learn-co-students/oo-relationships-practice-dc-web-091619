class Dessert
    attr_reader :bakery, :ingredients, :calories
    @@all = []
    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @ingredients = ingredients
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end
    end
    def bakery
        @bakery
    end
    def calories
        self.ingredients.select do |ingredient| 
            ingredient.calorie.sum
        end

    end
end