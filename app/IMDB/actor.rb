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
        self.all.each do |actor|
            top_num_of_characters = 0
            actor_with_most_characters = 0
            if actor.characters.length > top_num_of_characters
                top_num_of_characters = actor.characters.length
                actor_with_most_characters = actor
            end
            actor_with_most_characters
        end
    end



end