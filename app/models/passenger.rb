class Passenger
    attr_accessor :name, :total_distance
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def self.all 
        @@all 
    end

    def rides
        #returns all rides a passenger has been on
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        #returns all drivers a passenger has ridden with
        his_drivers = []

        rides.select do |ride|
            his_drivers << ride.driver ##pushes the passenger name into the new array
        end

        his_drivers #returns an array of this drivers passengers
    end

    def total_distance
        #should calculate the total distance the passenger has travelled 
        total = 0

        rides.each do |ride|
            total += ride.distance 
        end

        total.round(1) #returns the total miles and rounds up the first decimal. Keeps it at as a float
    end

    def self.premium_members
        #should find all passengers who have travelled over 100 miles with the service 
        all_passengers = [] #keeps track of the passenger names

        Ride.all.each do |ride|     #goes through an adds each name to the all_passengers
            all_passengers << ride.passenger
        end

        
        all_passengers.uniq.select do |name|
            #name.total_distance > 5.0       #tested with 5 instead of 100
            name.total_distance > 100
        end
    end
end
