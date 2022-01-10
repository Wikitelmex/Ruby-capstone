require './uiapp'

def main
  books = []
  music_albums = []
  games = []
  ui_app = UiApp.new(books, music_albums, games)

  loop do
    system 'clear'
    system 'cls'

    puts 'Welcome!'
    option = ui_app.options
    break if option > 9

    ui_app.do_action(option)
  end
end

main
