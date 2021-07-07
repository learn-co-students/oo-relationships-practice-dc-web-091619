class Rides
    attr_accessor :passengers, :drivers, :distance
    @@all = []
    def initialize(drivers, passengers, distance)
        @passengers = passengers
        @drivers = drivers
        @distance = distance
        @@all << self
    end
    def self.all
        @@all
    end
    # def drivers
    #     @drivers
    # end
    # def passengers
    #     @passengers
    # end
    def self.average_distance
        total_distance = self.all.inject do |ride|
            ride.mileage_cap
        end
        sum=total_distance / self.distance.count        
    end
end