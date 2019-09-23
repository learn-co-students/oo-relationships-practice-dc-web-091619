# Movies >>>> Characters(has only one actor) <<<< Shows
# Actors >>>>

# #### Character 

# - .most_appearances
#   - should return which character of film/television appears in the most films
#     or tv shows

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

    def character_in_movie
        MovieCharacter.all.select { |moviecharacter| moviecharacter.character == self}
    end

    def character_in_show
        ShowCharacter.all.select { |showcharacter| showcharacter.character == self}
    end
    
    def total_characters
        (character_in_movie + character_in_show).length
    end

    def self.most_appearances
        self.all.max_by {|character| character.total_characters}
    end

end
