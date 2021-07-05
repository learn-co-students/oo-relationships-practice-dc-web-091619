#Trip will be the middle man connecting listing and guest
require "pry"
require_relative "./listing.rb"
require_relative "./guest.rb"

class Trip
    attr_accessor :trip, :listing, :guest

    @@all = []

    def initialize(trip, listing, guest)
        @trip = trip
        @listing = listing 
        @guest = guest
        @@all << self
    end

    def self.all
        @@all 
    end

    def listings
        #returns the listing object for the trip
        self.listing
    end

    def guests
        self.guest
    end

    
end
