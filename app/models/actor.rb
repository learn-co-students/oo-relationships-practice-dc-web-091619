class Actor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select{|char| char.actor == self}
    end

    def movies
        movies = CharacterMovie.all.map{|cm| cm.movie if cm.character.actor == self}
        movies.delete(nil)
        movies
    end

    def shows
        shows = CharacterShow.all.map{|cs| cs.show if cs.character.actor == self}
        shows.delete(nil)
        shows
    end

    def self.most_characters
        actors = Character.all.map{|char| char.actor}
        actors.max_by{|actor| actors.count(actor)}
    end

end


# def movies
#     CharacterMovie.all.select{|cm| cm.character.actor == self}.map(&:.movie)
# end