require "pry"

class Driver
    attr_accessor :name, :driver

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all 
    end

    def rides
        #returns all rides a driver has made
        Ride.all.select do |ride|
            ride.driver == self
        end
    end
    
    def passengers
        # his_passengers = []

        # rides.select do |ride|
        #     his_passengers << ride.passenger ##pushes the passenger name into the new array
        # end

        # his_passengers #returns an array of this drivers passengers
        self.rides.map { |ride| ride.passenger}
    end

    def self.mileage_cap(distance = 0.00)
        #takes an argument of a distance (float) and returns all drivers who have exceeded that mileage
        driver_miles = {}

        Ride.all.map do |ride|
            driver_miles[ride.driver] = 0       #setting up hash with drivers and empty values
        end
       
        Ride.all.map do |ride| 
            driver_miles[ride.driver] += ride.distance  #going through the hash and adding up the distance for every driver
        end

        driver_miles.select {|driver, miles| miles.round > distance}  #going through hash and using select 
      
        

    end

end
