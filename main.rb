require './uiapp'
require './model/entity'
require './model/author'
require './model/label'
require './model/book'
require './model/game'
def init
  @labels_entity = Entity.new('labels.json')
  @labels = @labels_entity.load(Label)
  @authors_entity = Entity.new('authors.json')
  @authors = @authors_entity.load(Author)
  @genres_entity = Entity.new('genres.json')
  @genres = @genres_entity.load(Genre)
  @games_entity = Entity.new('games.json')
  @games = @games_entity.load(Game)
  @books_entity = Entity.new('books.json')
  @books = @books_entity.load(Book)
  @music_albums_entity = Entity.new('music_albums.json')
  @music_albums = @music_albums_entity.load(MusicAlbum)
end

def main
  init
  ui_app = UiApp.new(@books, @music_albums, @games, @authors, @genres, @labels)
  loop do
    system 'clear'
    system 'cls'
    puts 'Welcome!'
    option = ui_app.options
    break if option > 13 or option.zero?

    ui_app.do_action(option)
  end
  @books_entity.save(@books)
  @labels_entity.save(@labels)
  @music_albums_entity.save(@music_albums)
  @genres_entity.save(@genres)
  @authors_entity.save(@authors)
  @games_entity.save(@games)
end

main
