# #### Ride  

# - #passenger
#   - returns the passenger object for that ride
# - #driver
#   - returns the driver object for that ride
# - .average_distance
#   - should find the average distance of all rides

class Ride

    attr_reader :passenger, :driver
    attr_accessor :distance #this can be either reader or accessor
    @@all = []

    def initialize(distance, passenger, driver)
        @distance = distance.to_f  # make the distance given as a float
        @passenger = passenger     # because the readme asked for it
        @driver = driver
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        all_distance = self.all.map {|ride| ride.distance}
        all_distance.sum / all_distance.length
    end

end
