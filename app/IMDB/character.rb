# Movies >>>> Characters(has only one actor) <<<< Shows
# Actors >>>>

# #### Character

# - .most_appearances
#   - should return which character of film/television appears in the most films
#     or tv shows

class Character
    
    attr_accessor :name, :actor, :movie, :show
    @@all = []
    
    def initialize(name, actor, movie=nil, show=nil)
        @name = name
        @actor = actor
        @movie = movie
        @show = show
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_appearances
        # from the @@all, find which character appears the most
        # ex) [a,a,a,b,b,c]
    end

end
