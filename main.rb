require './uiapp'
require './model/entity'
require './model/author'

def main
  books = []
  games = []
  music_albums_entity = Entity.new('music_albums.json')
  music_albums = music_albums_entity.load(MusicAlbum)
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
  music_albums_entity.save(music_albums)
  genres_entity.save(genres)
  authors_entity.save(authors)
end

main
