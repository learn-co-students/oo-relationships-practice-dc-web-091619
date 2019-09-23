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
            self.drivers.include?(ride.drivers)
            binding.pry
        end
    end
    def total_distance
        #calculates the total distance the passenger has traveled within the service
        total_distance = 0
        self.rides.each do |ride|
            binding.pry
            total_distance = total_distance + ride.distance
        end 
        total_distance
    end
    def self.premium_members

    end
end