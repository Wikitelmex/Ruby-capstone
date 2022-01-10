class UiApp
  def initialize(books, music_albums, games)
    @games = RentalActions.new(games)
    @music_albums = PersonActions.new(music_albums)
    @books = BookActions.new(books)
  end

  def options
    puts 'Please choose an option by entering a number:'
    puts '0 - Exit'
    puts '1 - List all books'
    puts '2 - List all labels (e.g. Gift, New)'
    puts '3 - Add a book'
    puts '0 or default to exit'
    gets.chomp.to_i
  end

  def do_action(option)
    case option
    when 1
      @books.read_all
    when default
      break
    end
  end
end
