class Listing
    attr_accessor :guests, :trips, :trip_count
    @@all = []
    def initialize(name)
        @name = name
        @guests = guests
        @trips = trips
        @trip_count = trip_count
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
        Trip.all.map do |trip|
            trip if trip.listing == self
    def self.find_all_by_city(city_name)

    end
end