class Guest
    attr_accessor :name, trip
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
end