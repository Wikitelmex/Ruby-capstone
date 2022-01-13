require_relative './controller/authoractions'
require_relative './controller/labelactions'
require_relative './controller/bookactions'
require_relative './controller/genre_actions'
require_relative './controller/music_album_actions'
class UiApp
  def initialize(books, music_albums, games, authors, genres, labels)
    @games = games
    
    # implement actions
    @labels = LabelActions.new(labels) 
    @authors = AuthorActions.new(authors)
    @books = BookActions.new(books)
    @genres = GenreActions.new(genres)
    @music_albums = MusicAblumActions.new(music_albums)
  end

  def options
    puts 'Please choose an option by entering a number:'
    puts '0 - Exit'
    puts '1 - List all books'
    puts '2 - Create a book'
    puts '3 - List all labels (e.g. Gift, New)'
    puts '4 - Create Label'
    puts '5 - List all genres'
    puts '6 - Create genre'
    puts '7 - List all music albums'
    puts '8 - Create Music album'
    puts '13 - List all Authors'
    puts '14 - Create Author'
    puts '0 or default to exit'
    gets.chomp.to_i
  end

  def do_action(option)
    case option
    when 1
      @books.read_all
    when 2
      @books.create
    when 3
      @labels.read_all
    when 4
      @labels.create
    when 5
      @genres.read_all
    when 6
      @genres.create
    when 7
      @music_albums.read_all
    when 8
      @music_albums.create
    when 13
      @authors.read_all
    when 14
      @authors.create
    end
  end
end
