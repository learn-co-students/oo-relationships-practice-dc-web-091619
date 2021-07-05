class Show

    attr_reader :title
    
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def on_the_big_screen
        Movie.all.select{|mov| mov.title == self.title}
    end
end