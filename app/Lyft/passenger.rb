# #### Passenger  

# - #drivers
#   - returns all drivers a passenger has ridden with
# - #rides
#   - returns all rides a passenger has been on
# >>>> .all
#   - returns an array of all passengers
# - #total_distance
#   - should calculate the total distance the passenger has travelled with the
#     service
# - .premium_members
#   - should find all passengers who have travelled over 100 miles with the service

class Passenger

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        self.rides.map {|ride| ride.driver}
    end

    def total_distance
        self.rides.map {|ride| ride.distance}.sum
        # instead of .sum, we can do .reduce(:+)
    end

    def self.premium_members
        self.all.select {|passenger| passenger.total_distance > 100}
    end
end
