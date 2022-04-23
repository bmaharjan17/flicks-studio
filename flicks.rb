require_relative 'movie'
require_relative 'playlist'

movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("dune", 9)
movie3 = Movie.new("batman")

playlist1 = Playlist.new("Jay")
playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)
playlist1.play

playlist2 = Playlist.new("Maddie")
playlist2.add_movie(movie3)

movie4 = Movie.new("Spiderman", 15)
playlist2.add_movie(movie4)
playlist2.play