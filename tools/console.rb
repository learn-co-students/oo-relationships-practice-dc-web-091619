require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Listing 
chicago = Listing.new("Appartment", "Chicago")
seattle = Listing.new("Studio", "Seattle")
newyork = Listing.new("Apartment", "New York")
Listing.all

#Guests
harry = Guest.new("Harry")
johnny = Guest.new("Johnny")
franklin = Guest.new("Franklin")
Guest.all

#Trips 
trip1 = Trip.new("Business", chicago, harry)
trip2 = Trip.new("Vacation", seattle, johnny)
trip3 = Trip.new("Retreat", newyork, franklin)
trip4 = Trip.new("Vacation", chicago, johnny)
trip5 = Trip.new("School", seattle, harry)
trip5 = Trip.new("School", seattle, johnny)

Trip.all

#Trips Class Methods
trip2.listings  #WORKS
trip3.guests    #WORKS

#Listing Class Methods
chicago.trips   #WORKS
seattle.trip_count    #WORKS
chicago.guests    #WORKS
Listing.find_all_by_city("Seattle") #WORKS
Listing.most_popular #WORKS

#Guest Class Methods 
harry.trips   #WORKS
harry.listings   #WORKS
johnny.trip_count   #WORKS
Guest.pro_traveller   #WORKS 
Guest.find_all_by_name("Johnny") #WORKS


binding.pry
0