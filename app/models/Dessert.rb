# create files for your ruby classes in this directory

#  X#ingredients
#  -X should return an array of ingredients for the dessert
#  -X #bakery
#    - should return the bakery object for the dessert
#  -X #calories
#    - X!!!hould return a number totaling all the calories for all the ingredients included in that dessert
#  X- .all
#    - should return an array of all desserts
class Dessert

    attr_reader :name, :bakery

    @@all = []

    def initialize (name, bakery)
        @name = name 
        @bakery = bakery
       
        @@all << self
    end

    def ingredients
       a= Ingredient.all.select do |i|
            i.dessert==self
        end       
    end


    def calories
     total = []
        self.ingredients.select do |ingredient|
            total << ingredient.cal
        end 
     total.sum
    end

    def self.all
        @@all
    end

end

