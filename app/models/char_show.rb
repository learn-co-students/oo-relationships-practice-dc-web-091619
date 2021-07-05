class CharacterShow

    attr_reader :character, :show

    @@all = []

    def initialize(character, show)
        @character = character
        @show = show
        @@all << self
    end

    def self.all
        @@all
    end

end