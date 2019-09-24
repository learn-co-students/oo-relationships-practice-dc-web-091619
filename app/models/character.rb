class Character

    attr_reader :name, :actor

    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

    def movies
        movies = CharacterMovie.all.map{|cm| cm.movie if cm.character == self}
        movies.delete(nil)
        movies
    end

    def shows
        shows = CharacterShow.all.map{|cs| cs.show if cs.character == self}
        shows.delete(nil)
        shows
    end

    def self.most_appearances
        appearances = self.all.max_by{|char| char.movies.count + char.shows.count}
    end

end