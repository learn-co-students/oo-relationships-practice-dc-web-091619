class Trip
    attr_accessor :guest, :listing
    @@all = []
    def initialize(name, guest, listing)
        @name = name
        @guest = guest
        @listing = listing
        @@all << self
    end
    def self.all
        @@all
    end
    def listings
        Listing.all.select do |listing|
           listing.trip == self
        end
    end
    def guests
      Trip.all.select do |trip|
            trip.guest == self
      end
    end  
end