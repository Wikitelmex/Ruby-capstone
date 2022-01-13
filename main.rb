require './uiapp'
require './model/entity'
require './model/author'
require './model/label'
def init
  @books = []
  @games = []
  @music_albums_entity = Entity.new('music_albums.json')
  @music_albums = @music_albums_entity.load(MusicAlbum)
  @genres_entity = Entity.new('genres.json')
  @genres = @genres_entity.load(Genre)

  @labels_entity = Entity.new('labels.json')
  @labels = @labels_entity.load(Label)

  @authors_entity = Entity.new('authors.json')
  @authors = @authors_entity.load(Author)
end

def main
  init
  ui_app = UiApp.new(@books, @music_albums, @games, @authors, @genres, @labels)
  loop do
    system 'clear'
    system 'cls'
    puts 'Welcome!'
    option = ui_app.options
    break if option > 15 or option.zero?

    ui_app.do_action(option)
  end
  @labels_entity.save(@labels)
  @music_albums_entity.save(@music_albums)
  @genres_entity.save(@genres)
  @authors_entity.save(@authors)
end

main
