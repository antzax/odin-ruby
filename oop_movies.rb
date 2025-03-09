class Cinema

  attr_accessor :name, :location

  def initialize(name, location)
    @name = name
    @locaiton = location
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
    movie.cinema = self
  end
end

class Movies

  attr_accessor :title, :length, :release_day, :length, :cinema

  @@all = []

  def initialize(title, showtime, release_day, length)
    @title = title
    @showtime = showtime
    @release = release
    @length = length
    @@all << title
  end

end