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
    puts '1 - List all books'
    puts '2 - Add a book'
    puts '3 - List all labels (e.g. Gift, New)'
    puts '4 - List all genres'
    puts '5 - List all music albums'
    puts '6 - Add Music album'
    puts '7 - List all Authors'
    puts '8 - List all Games'
    puts '9 - Add Game'
    puts '0 or default to exit'
    gets.chomp.to_i
  end

  def book_related(option)
    case option
    when 1
      @books.read_all
    when 2
      @authors.create
      @books.create
    end
  end

  def label_related(option)
    case option
    when 3
      @labels.read_all
    end
  end

  def genres_related(option)
    case option
    when 4
      @genres.read_all
    end
  end

  def music_related(option)
    case option
    when 5
      @music_albums.read_all
    when 6
      @labels.create
      @music_albums.create
    end
  end

  def author_related(option)
    case option
    when 7
      @authors.read_all
    end
  end

  def game_related(option)
    case option
    when 8
      @games.read_all
    when 9
      @genres.create
      @games.create
    end
  end

  def do_action(option)
    case option
    when 1..2
      book_related(option)
    when 3
      label_related(option)
    when 4
      genres_related(option)
    when 5..6
      music_related(option)
    when 7
      author_related(option)
    when 8..9
      game_related(option)
    end
  end
end
