class Dessert

    attr_reader :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select{|ing|
            ing.dessert == self}
    end

    def calories
        total_calories = 0
        self.ingredients.each{|ing|
            total_calories += ing.calorie_count}
        total_calories
    end

end