class Dessert

  attr_accessor :name, :bakery

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end

  def calories 
    total_calories = 0

    Ingredient.all.select do |ingred|
      if ingred.dessert == self
        total_calories += ingred.calorie
      end
    end
    return total_calories
  end

  def ingredients 
    ingredients= []

    Ingredient.all.each do |ingred|
      if ingred.dessert == self
        ingredients << ingred.name
      end
    end
    return ingredients
  end

  def my_bakery 
    self.bakery
  end

end