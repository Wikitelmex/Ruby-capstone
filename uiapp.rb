require_relative './controller/authoractions'
require_relative './controller/labelactions'
require_relative './controller/bookactions'
class UiApp
  def initialize(books, music_albums, games, authors, labels)
    @music_albums = music_albums
    @games = games
    # implement actions
    @labels = LabelActions.new(labels) # implement labels actions
    @authors = AuthorActions.new(authors)
    @books = BookActions.new(books)
  end

  def options
    puts 'Please choose an option by entering a number:'
    puts '0 - Exit'
    puts '1 - List all books'
    puts '2 - Create a book'
    puts '3 - List all labels (e.g. Gift, New)'
    puts '4 - Create Label'
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
    when 13
      @authors.read_all
    when 14
      @authors.create
    end
  end
end
