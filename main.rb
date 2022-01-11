require './uiapp'

def main
  books = []
  music_albums = []
  games = []
  authors = []
  ui_app = UiApp.new(books, music_albums, games, authors)

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
