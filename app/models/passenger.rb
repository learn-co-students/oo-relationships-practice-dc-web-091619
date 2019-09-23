class Passenger

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def drivers
        self.rides.map{|ride|
            ride.driver}
    end

    def rides
        Ride.all.select{|ride|
            ride.passenger == self}
    end

    def total_distance
        total = 0
        self.rides.each{|ride|
            total += ride.distance}
        total
    end

    def self.premium_members
        self.all.select{|member|
            member.total_distance > 100}
    end



end