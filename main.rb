require './uiapp'

def main
  books = []
  music_albums = []
  games = []
  genres = []
  authors = []
  ui_app = UiApp.new(books, music_albums, games, authors, genres)

  loop do
    system 'clear'
    system 'cls'

    puts 'Welcome!'
    option = ui_app.options
    break if option > 15 or option.zero?

    ui_app.do_action(option)
  end
end

main
