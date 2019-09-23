class Trip
    attr_accessor :guests, :listings
    @@all = []
    def initialize(name)
        @name = name
        @guests = guests
        @listings = listings
        @@all << self
    end
end