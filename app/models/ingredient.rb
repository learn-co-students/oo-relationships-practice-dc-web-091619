class Ingredient

  attr_accessor :name, :dessert, :calorie

  @@all = []

  def self.all
    @@all
  end

  def self.find_all_by_name(ingredient)
    matching_ingredients = []

    self.all.each do |ingred|
      if ingred.name.include? ingredient

        matching_ingredients << ingred.name

      end

    end

    return matching_ingredients
  end

  def initialize(name, dessert, calorie)
    @name = name
    @dessert = dessert
    @calorie = calorie
    @@all << self
  end

  def my_dessert 
    self.dessert
  end

  def bakery
    self.dessert.my_bakery

    # Dessert.all.select do |dessert|
    #   if dessert.ingredients.include?(self.name)
    #     dessert.bakery
    #   end
    # end
  end

end
