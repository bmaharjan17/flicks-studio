class Movie

    attr_reader :rank #makes instance variable useable (getter method)
    attr_accessor :title
    #attr_writer :title #setter method

    def initialize(title, rank=0)
        @title = title.capitalize  #instance variables @
        @rank = rank
    end

    def normalized_rank
        @rank/10
    end

    #behavior expressed as instance method
    def thumbs_up
        @rank += 1
    end

    def thumbs_down
        @rank -= 1 
    end

    def to_s
        "#{@title} has a rank of #{@rank}"
    end  
end


#test code
#FILE is a var that holds the filename of the file(movie.rb) $0 is currently run program
if __FILE__ == $0 
    movie = Movie.new("Godfather", 10)
    puts movie.title
    puts movie.rank

    movie.thumbs_up
    movie.thumbs_up
    puts movie.rank

    movie.thumbs_down
    puts movie.rank
    puts movie
end