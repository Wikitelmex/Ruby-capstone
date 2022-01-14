require_relative './controller/authoractions'
require_relative './controller/labelactions'
require_relative './controller/bookactions'
require_relative './controller/genre_actions'
require_relative './controller/music_album_actions'
require_relative './controller/gameactions'
class UiApp
  def initialize(books, music_albums, games, authors, genres, labels)
    @games = GameActions.new(games)
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
    puts '9 - List all Authors'
    puts '10 - Create Author'
    puts '11 - List all Games'
    puts '12 - Create Game'
    puts '0 or default to exit'
    gets.chomp.to_i
  end

  def book_related(option)
    case option
    when 1
      @books.read_all
    when 2
      @books.create
    end
  end

  def label_related(option)
    case option
    when 3
      @labels.read_all
    when 4
      @labels.create
    end
  end

  def genres_related(option)
    case option
    when 5
      @genres.read_all
    when 6
      @genres.create
    end
  end

  def music_related(option)
    case option
    when 7
      @music_albums.read_all
    when 8
      @music_albums.create
    end
  end

  def author_related(option)
    case option
    when 9
      @authors.read_all
    when 10
      @authors.create
    end
  end

  def game_related(option)
    option == 11 ? @games.read_all : @games.create
  end

  def do_action(option)
    case option
    when 1..2
      book_related(option)
    when 3..4
      label_related(option)
    when 5..6
      genres_related(option)
    when 7..8
      music_related(option)
    when 9..10
      author_related(option)
    when 11..12
      game_related(option)
    end
  end
end
