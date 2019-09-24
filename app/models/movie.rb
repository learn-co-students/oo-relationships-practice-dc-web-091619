class Movie

    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        CharacterMovie.all.find_all{|cm| cm.character if cm.movie == self}
    end

    def self.most_actors
        self.all.max_by{|mov| mov.characters.count}
    end

end