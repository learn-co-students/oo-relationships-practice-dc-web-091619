class MovieCharacter

    attr_reader :name, :movie, :character
    @@all = []

    def initialize(name, movie, character)
        @name = name
        @movie = movie
        @character = character
        @@all << self
    end

    def self.all
        @@all
    end

end