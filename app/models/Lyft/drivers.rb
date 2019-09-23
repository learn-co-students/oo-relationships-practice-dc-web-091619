class Drivers
    attr_accessor :name, :passengers, :rides

    @@all = []

    def initialize(name, passengers)
        @name = name
        @passengers = passengers
        @rides = rides
        @@all << self
    end
    def passengers
        @passengers
    end
    def rides
        Rides.all.select do |ride|
            ride.drivers == self
        end
    end
    def self.all
        @@all
    end
    def self.mileage_cap(distance= 0.00)
        total_miles = {}
        self.mileage_cap.select do |distance|
        end

    end
end