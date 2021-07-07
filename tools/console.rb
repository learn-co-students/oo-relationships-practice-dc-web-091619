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
# ride1 = Rides.new(driver1, passenger1, 25)
# ride2 = Rides.new(driver2, passenger2, 50)
# ride3 = Rides.new(driver2, passenger2, 75)
# ride1.distance
# driver1.rides
# binding.pry
# general_assembly = Code_Camp.new("General Assembly", "Python, C++")
# flatiron = Code_Camp.new("Flatiron", "Ruby, Javascript")
# debugging_101 = Projects.new("Debugging 101", "Ruby, C++")
# oo_relationships = Projects.new("OO Relationships", "Python")
# cli_applications = Projects.new("CLI Applications", "Javascript")
# adam = Developer.new("Adam", general_assembly, debugging_101)
# sergio = Developer.new("Sergio", flatiron, oo_relationships)
# charles = Developer.new("Charles", flatiron, debugging_101)
# binding.pry
listing1 = Listing.new("Hotel Pantheon", "Rome")
listing2 = Listing.new("name", "Florence")
listing3 = Listing.new("Piraeus Inn", "Athens")
listing4 = Listing.new("Amberly Castle", "London")
guest1 = Guest.new("Ikumi")
guest2 = Guest.new("Orihime")
guest3 = Guest.new("Kirito")
guest4 = Guest.new("Asuna")
trip1 = Trip.new("Rick Steve's Tour of Rome", guest1, listing1)
trip2 = Trip.new("Rick Steve's Tour Guide to Florence", guest2, listing2)
trip3 = Trip.new("Travel Athens", guest3, listing3)
trip4 = Trip.new("In the Footsteps of the Caesars", guest1, listing1)
trip5 = Trip.new("Journey to Rome", guest2, listing1)
trip6 = Trip.new("In the Footsteps of the Normans", guest4, listing4)
guest1.trips
guest2.trips
listing1.trip_count
Listing.most_popular
Guest.pro_traveler
Listing.find_all_by_city("Rome")
Guest.find_all_by_name("Ikumi")
binding.pry
0