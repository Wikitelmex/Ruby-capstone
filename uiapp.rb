require_relative './controller/authoractions'
require_relative './controller/labelactions'
require_relative './controller/genre_actions'
require_relative './controller/music_album_actions'
class UiApp
  def initialize(books, music_albums, games, authors, genres, labels)
    @books = books
    @games = games

    # implement actions
    @labels = LabelActions.new(labels) # implement labels actions
    @authors = AuthorActions.new(authors)
    @genres = GenreActions.new(genres)
    @music_albums = MusicAblumActions.new(music_albums)
  end

  def options
    puts 'Please choose an option by entering a number:'
    puts '0 - Exit'
    puts '1 - List all books'
    puts '2 - List all labels (e.g. Gift, New)'
    puts '3 - Create Label'
    puts '4 - List all genres'
    puts '5 - Create genre'
    puts '6 - List all music albums'
    puts '7 - Create Music album'
    puts '13 - List all Authors'
    puts '14 - Create Author'
    puts '0 or default to exit'
    gets.chomp.to_i
  end

  def do_action(option)
    case option
    when 2
      @labels.read_all
    when 3
      @labels.create
    when 4
      @genres.read_all
    when 5
      @genres.create
    when 6
      @music_albums.read_all
    when 7
      @music_albums.create
    when 13
      @authors.read_all
    when 14
      @authors.create
    end
  end
end
