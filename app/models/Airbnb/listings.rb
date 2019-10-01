class Listing
    attr_accessor :name, :city
    @@all = []
    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end
    def self.all
        @@all
    end
    def guests
        Guest.all.select do |guest| 
            guest if guest.listing == self
        end
    end
    def trips 
        Trip.all.select do |trip|
            trip if trip.listing == self
        end
    end
    def trip_count
        trips.length
    end
    def self.find_all_by_city(city_name)
        self.all.find do |listing| 
            listing.city == city_name
            # binding.pry
        end
    end
    def self.most_popular
        self.all.max_by do |listing|
            listing.trip_count
        end
    end
end