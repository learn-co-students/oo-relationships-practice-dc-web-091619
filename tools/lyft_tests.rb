require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

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
ride5 = Ride.new(3.1, drake, franklin)

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