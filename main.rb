require './uiapp'
require './model/entity'
require './model/author'

def main
  books = []
  music_albums = []
  games = []
  genres_entity = Entity.new('genres.json')
  genres = genres_entity.load(Genre)

  authors_entity = Entity.new('authors.json')
  authors = authors_entity.load(Author)
  ui_app = UiApp.new(books, music_albums, games, authors, genres)

  loop do
    system 'clear'
    system 'cls'

    puts 'Welcome!'
    option = ui_app.options
    break if option > 15 or option.zero?

    ui_app.do_action(option)
  end
  genres_entity.save(genres)
  authors_entity.save(authors)
end

main
