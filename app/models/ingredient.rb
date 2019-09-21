class Ingredient

    attr_accessor :name
    attr_reader :calorie_count, :dessert

    @@all = []

    def initialize(name, calorie_count, dessert)
        @name = name
        @dessert = dessert
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all
    end

    def bakery
        self.dessert.bakery
    end

    def self.find_all_by_name(ingredient)
        #ingredients = self.all.map{|ing| ##uncomment this array and replace w/ "self.all" & take out .name below 
        #    ing.name}     ## to make function return ingredient string names instead of objects
        less_ingredients = self.all.select{|ing|
            ing.name.include?(ingredient)}
    end
end