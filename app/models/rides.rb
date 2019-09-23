class Ride

    attr_reader :distance, :passenger, :driver

    @@all = []

    def initialize(distance, passenger, driver)
        @distance = distance
        @passenger = passenger
        @driver = driver
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.average_distance
        total = 0
        self.all.each{|ride|
            total += ride.distance}
        average = total / self.all.count
    end
end