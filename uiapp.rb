require_relative './controller/authoractions'
class UiApp
  def initialize(books, music_albums, games, authors)
    @games = RentalActions.new(games)
    @music_albums = PersonActions.new(music_albums)
    @books = BookActions.new(books)
    @authors = AuthorActions.new(authors)
  end

  def options
    puts 'Please choose an option by entering a number:'
    puts '0 - Exit'
    puts '1 - List all books'
    puts '2 - List all labels (e.g. Gift, New)'
    puts '13 - List all Authors'
    puts '14 - Create Author'
    puts '0 or default to exit'
    gets.chomp.to_i
  end

  def do_action(option)
    case option
    when 13
      @authors.read_all
    when 14
      @authors.create
    when default
      break
    end
  end
end
