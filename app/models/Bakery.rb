# - #ingredients
#   - should return an array of ingredients for the bakery's desserts
# - #desserts
#   - should return an array of desserts the bakery makes
# - #average_calories
#   - should return a number totaling the average number of calories for the desserts sold at this bakery
# - X.all
#   - should return an array of all bakeries
# - #shopping_list
#   - should return a string of names for ingredients for the bakery


class Bakery

attr_reader :name

@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        b= Ingredient.all.select do |i|
            i.bakery == self  
        end
    end

    def desserts
    c= Dessert.all.select do |d|
        d.bakery == self 
    end
end

    def average_calories
        d= self.ingredients.map do |ingredient|
            ingredient.cal
        end
        d.sum/self.desserts.length
    end

    def shopping_list
        #an array of ingredients
        #which ingredients are in each dessert
        #puts name of each ingredient that bakery uses
       self.ingredients.map do |ingredient|
        ingredient.name
        
    #     ingredient.bakery==self
       end
    end

end
