require './uiapp'
require './model/entity'
require './model/author'
require './model/label'

def main
  books = []
  music_albums = []
  games = []

  labels_entity = Entity.new('labels.json')
  labels = labels_entity.load(Label)

  authors_entity = Entity.new('authors.json')
  authors = authors_entity.load(Author)
  ui_app = UiApp.new(books, music_albums, games, authors, labels)

  loop do
    system 'clear'
    system 'cls'

    puts 'Welcome!'
    option = ui_app.options
    break if option > 15 or option.zero?

    ui_app.do_action(option)
  end

  labels_entity.save(labels)
  authors_entity.save(authors)
end

main
