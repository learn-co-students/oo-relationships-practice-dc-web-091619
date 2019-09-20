class Bakery
    attr_accessor :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    def ingredients
        Ingredient.all.select do |ingredient|
            self.desserts.include?(ingredient.dessert)
        end 
    end
    def desserts
        Dessert.all.map do |dessert|
            dessert if dessert.bakery == self
        end
    end
    def average_calories
        total_calories = self.ingredients.inject do |ingredient|
            ingredient.calorie_count
        end
        # binding.pry
        sum=total_calories / self.desserts.count
        sum
    end
    def shopping_list
        self.desserts.map do |desserts|
            desserts.ingredients
        end
    end
end