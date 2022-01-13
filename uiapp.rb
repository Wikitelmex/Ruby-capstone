require_relative './controller/authoractions'
require_relative './controller/genre_actions'
require_relative './controller/music_album_actions'
class UiApp
  def initialize(books, music_albums, games, authors, genres)
    @books = books
    @games = games

    # implement actions

    @authors = AuthorActions.new(authors)
    @genres = GenreActions.new(genres)
    @music_albums = MusicAblumActions.new(music_albums)
  end

  def options
    puts 'Please choose an option by entering a number:'
    puts '0 - Exit'
    puts '1 - List all books'
    puts '2 - List all labels (e.g. Gift, New)'
    puts '3 - List all genres'
    puts '4 - Create genre'
    puts '5 - List all music albums'
    puts '6 - Create Music album'
    puts '13 - List all Authors'
    puts '14 - Create Author'
    puts '0 or default to exit'
    gets.chomp.to_i
  end

  def do_action(option)
    case option
    when 3
      @genres.read_all
    when 4
      @genres.create
    when 5
      @music_albums.read_all
    when 6
      @music_albums.create
    when 13
      @authors.read_all
    when 14
      @authors.create
    end
  end
end
