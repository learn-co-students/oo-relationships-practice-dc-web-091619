class Ride
    ## Ride is the middle table that will join Passenger and Driver
    attr_accessor :distance, :passenger, :driver

    @@all = []

    def initialize (distance , passenger, driver)
        @distance = distance 
        @passenger = passenger
        @driver = driver
        @@all << self  
    end

    def self.all
        @@all
    end

    def passengers 
        #returns the passenger object for that ride
        self.passenger
    end

    def drivers
        #returns the driver object for that ride
        self.driver
    end

    def self.average_distance
        #should find the average distance of all rides
        #get the total distance for all rides and divide by the amount of rides in rides.all
        total_distance = 0

        Ride.all.each {|rides| total_distance += rides.distance} #goes through rides and adds distance to the total_distance variable

        total_distance / self.all.length #divies the total distance by the length of all rides 
    end

end

