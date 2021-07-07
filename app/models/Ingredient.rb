# X#dessert
# X-should return a dessert object for that ingredient
# X- #bakeryla
#  X - should return the bakery object for the bakery that uses that ingredient
# - X.all
#   - Xshould return an array of all ingredients
# - X.find_all_by_name(ingredient)
#   - Xshould take a string argument return an array of all ingredients that
#     Xinclude that string in their name
#     - X.find_all_by_name('chocolate') might return ['chocolate sprinkles',
#       X'chocolate mousse', 'chocolate']
#     - Xmake sure you aren't just looking for exact matches (like 'chocolate' ==
#       X'chocolate')



class Ingredient
    
    attr_reader :name, :dessert, :cal
    @@all = []

    def initialize (name, dessert, cal)
        @name = name
        @dessert = dessert 
        @cal = cal
        @@all << self
    end

    def bakery
        self.dessert.bakery
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient)
            self.all.select do |i|
            i.name.include?(ingredient)
        end
    end


end
