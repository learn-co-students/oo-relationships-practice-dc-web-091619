# Listing >>> Trip <<<< Guest 

# #### Trip 
 
# - #listing
#   - returns the listing object for the trip
# - #guest
#   - returns the guest object for the trip
# - .all
#   - returns an array of all trips

class Trip

    attr_reader :guest, :listing
    @@all = []

    def initialize(guest, listing)
        @guest = guest
        @listing = listing
        @@all << self
    end

    def self.all
        @@all
    end

end