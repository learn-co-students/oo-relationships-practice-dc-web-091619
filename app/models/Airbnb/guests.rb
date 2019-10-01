class Guest
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def trips
        Trip.all.select do |trip|
            trip.guest == self
        end
    end
    def listings
        Listing.all.map do |listing| 
            listing.guest == self
        end
    end
    def self.pro_traveler
        self.all.select do |guest|
            guest if guest.trips.length > 1      
        end
    end
    def self.find_all_by_name(name)
        self.all.find do |guest|
            guest.name == name
        end
    end
    
end