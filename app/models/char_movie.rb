class CharacterMovie

    @@all = []

    attr_reader :character, :movie


    def initialize(character, movie)
        @character = character
        @movie = movie
        @@all << self
    end

    def self.all
        @@all
    end

    def movies(movie)
        self.all.select{|cm| cm.movie.title == movie}
    end

end