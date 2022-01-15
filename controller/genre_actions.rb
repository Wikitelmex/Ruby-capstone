require_relative './icontroller'
require_relative '../view/genre_view'

class GenreActions
  include IController

  def initialize(genres)
    @genres = genres
  end

  def read_all
    puts '-------------------------------------------------------------'
    puts '---------------------LIST OF GENRES--------------------------'
    @genres.each { |genre| GenreView.list_genres(genre) }
    wait
  end

  def create
    @genres << GenreView.create
  end
end
