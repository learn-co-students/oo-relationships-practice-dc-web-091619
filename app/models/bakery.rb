class Bakery

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def desserts
        Dessert.all.select{|dessert|
            dessert.bakery == self}
    end

    def ingredients
        self.desserts.map{|desserts|
            desserts.ingredients}.flatten
    end

    def shopping_list
        self.ingredients.map{|ings|
            ings.name}
    end

    def average_calories
        total_calories = 0
        self.desserts.each{|desserts|
            total_calories += desserts.calories}
        total_calories / desserts.count
    end

    def self.all
        @@all
    end

end