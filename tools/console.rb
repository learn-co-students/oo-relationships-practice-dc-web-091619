require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#### AIR BNB TESTS ###

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

### LYFT TESTS ###

## Passengers
sergio = Passenger.new("Sergio")
billy = Passenger.new("Billy")
drake = Passenger.new("Drake")

## Drivers
harry = Driver.new("Harry")
henry = Driver.new("Henry")
franklin = Driver.new("Franklin")

## Rides
ride1 = Ride.new(2.1, sergio, harry)
ride2 = Ride.new(4.1, sergio, franklin)
ride3 = Ride.new(2.1, billy, harry)
ride4 = Ride.new(5.1, billy, henry)
ride5 = Ride.new(3.0, drake, franklin)

# Test Methods 

#Driver Tests
harry.rides #WORKS!
harry.passengers #WORKS!
Driver.mileage_cap(2.3) #WORKS!

#Passenger Tests
sergio.rides  #WORKS
sergio.drivers  #WORKS
sergio.total_distance #WORKS
Passenger.premium_members #WORKS

#Ride Tests
ride1.passengers  #WORKS
ride1.drivers   #WORKS
Ride.average_distance #WORKS


binding.pry
0