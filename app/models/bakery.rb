class Bakery 

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def desserts
    # Return all desserts that belong to this bakery
    Dessert.all.select do |dessert|
      dessert.bakery == self
    end
  end

  def ingredients
    Ingredient.all.select do |ingred|
      ingred.dessert if ingred.dessert.bakery == self
    end
  end

  def average_calories
     list_of_calories = []

    self.desserts.each do |dessert|
      list_of_calories << dessert.calories
    end

    list_of_calories.reduce {|sum, el| sum + el}.to_f / list_of_calories.size 
  end

  def shopping_list
    new_list = []

    self.ingredients.each do |ingred|
      new_list << ingred.name
    end

    new_list.join(", ")
  end

end