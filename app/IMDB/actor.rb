# #### Actor 

# - .most_characters
#   - should return which actor has the most different characters played.
#     (probably meryl streep)


class Actor

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select{|character| character.actor == self}
    end

    def self.most_characters
        Actor.all.max_by {|actor| actor.characters.length}
    end

end