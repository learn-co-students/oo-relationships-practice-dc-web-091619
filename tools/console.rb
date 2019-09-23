require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# bakery1 = Bakery.new("name")
# bakery2 = Bakery.new("Thompson's")
# dessert1 = Dessert.new("cake", bakery1)
# dessert2 = Dessert.new("Cucumber Sandwich", bakery2)
# ingredient1 = Ingredient.new("cream", dessert1, 50)
# ingredient2 = Ingredient.new("sugar", dessert1, 25)
# ingredient3 = Ingredient.new("cucumber", dessert2, 15)
# bakery1.average_calories
# bakery1.ingredients
# binding.pry
# passenger1 = Passengers.new("Takeshi")
# passenger2 = Passengers.new("Andrea")
# driver1 = Drivers.new("Kotomi", passenger1)
# driver2 = Drivers.new("Hanataro", passenger2)
# ride1 = Rides.new(passenger1, driver1, 25)
# ride2 = Rides.new(passenger2, driver2, 50)
# ride3 = Rides.new(passenger2, driver2, 75)
# ride1.distance
# driver1.rides
# binding.pry
general_assembly = Code_Camp.new("General Assembly", "Python, C++")
flatiron = Code_Camp.new("Flatiron", "Ruby, Javascript")
debugging_101 = Projects.new("Debugging 101", "Ruby, C++")
oo_relationships = Projects.new("OO Relationships", "Python")
cli_applications = Projects.new("CLI Applications", "Javascript")
adam = Developer.new("Adam", general_assembly, debugging_101)
sergio = Developer.new("Sergio", flatiron, oo_relationships)
charles = Developer.new("Charles", flatiron, debugging_101)
binding.pry
0