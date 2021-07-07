class Passengers
    attr_accessor :name, :drivers, :rides
    @@all = []
    def initialize(name)
        @name = name
        @drivers = drivers
        @rides = rides
        @@all << self
    end
    def self.all
        @@all
    end
    def drivers
        Drivers.all.map do |driver|
            driver if driver.passengers == self
        end
    end
    def rides
        Rides.all.select do |ride|
            # binding.pry
            ride if ride.passengers == self
        end
    end
    def total_distance
        #calculates the total distance the passenger has traveled within the service
        total_distance = 0
        self.rides.each do |ride|
            total_distance = total_distance + ride.distance
        end 
        total_distance
    end
    def self.premium_members
        self.all.select do |passenger|
            passenger.total_distance > 100
        end
    end
end