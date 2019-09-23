class ShowCharacter

    attr_reader :name, :show, :character
    @@all = []

    def initialize(name, show, character)
        @name = name
        @show = show
        @character = character
        @@all << self
    end

    def self.all
        @@all
    end

end