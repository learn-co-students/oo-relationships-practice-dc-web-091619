class Ingredient
    attr_reader :calorie_count, :dessert, :name
    @@all = []
    def initialize(name, dessert, calorie_count)
        @name = name
        @dessert = dessert
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all
    end

     def dessert
        @dessert
     end
    def bakery
        @bakery
    end
    def self.find_all_by_name
        self.all.select do |ingredients|
            ingredients.name.include?(ingredient)
        end
    end 
end