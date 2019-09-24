require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



brad_pitt = Actor.new("Brad Pitt")
leo_dicap = Actor.new("Leo DiCaprio")
lizzo = Actor.new("Lizzo")
jennifer_aniston = Actor.new("Jennifer Aniston")

aldo_raine = Character.new("Aldo Raine", brad_pitt)
mr_candy = Character.new("Mr. Candy", leo_dicap)
precious = Character.new("Precious", lizzo)
sonny = Character.new("Sonny", leo_dicap)
rachel = Character.new("Rachel Greene", jennifer_aniston)

inglorious_basterds = Movie.new("Inglorious Basterds")
precious_movie = Movie.new("Precious")
django = Movie.new("Django")
friends = Show.new("Friends")
inglorious_show = Show.new("Inglorious Basterds")



aldo_IB = CharacterMovie.new(aldo_raine, inglorious_basterds)
candy_IB = CharacterMovie.new(mr_candy, inglorious_basterds)
lizzo_precious = CharacterMovie.new(precious, precious_movie)
rachel_friends = CharacterShow.new(rachel, friends)
aldo_IB_show = CharacterShow.new(aldo_raine, inglorious_show)
candy_django = CharacterMovie.new(mr_candy, django)
#candy_friends = CharacterShow.new(mr_candy, friends)





binding.pry
0