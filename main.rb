require './uiapp'
require './model/entity'
require './model/author'

def main
  books = []
  music_albums = []
  games = []

  authors_entity = Entity.new('authors.json')
  authors = authors_entity.load(Author)
  ui_app = UiApp.new(books, music_albums, games, authors)

  loop do
    system 'clear'
    system 'cls'

    puts 'Welcome!'
    option = ui_app.options
    break if option > 15 or option.zero?

    ui_app.do_action(option)
  end

  authors_entity.save(authors)
end

main
