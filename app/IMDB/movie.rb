# #### Movie

# - .most_actors
#   - should return the movie which has the most actors in it. this is so the
#     studio knows never to hire that director again because he/she makes
#     expensive movies

class Movie

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
        Character.all.select {|charater| character.movie == self}
    end

    def self.most_actors
        self.all.each do |movie|
            top_num_of_actors = 0
            movie_with_most_actors = 0
            if movie.characters.length > top_num_of_actors
                top_num_of_actors = movie.characters.length
                movie_with_most_actors = movie
            end
            movie_with_most_actors
        end
    end

end