class Driver

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select{|ride|
            ride.driver == self}
    end

    def passengers
        self.rides.map{|ride|
            ride.passenger}
    end

    def total_mileage
        total = 0
        self.rides.each{|ride|
            total += ride.distance}
        total
        self.rides.map{|ride| ride.distance}.sum  ##better way of doing it found in lecture
    end

    def self.mileage_cap(distance)
        self.all.select{|driver|
            driver.total_mileage > distance}
    end

end