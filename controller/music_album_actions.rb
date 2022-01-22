require_relative '../view/music_albums_view'
class MusicAblumActions
  include IController

  def initialize(music_albums)
    @music_albums = music_albums
  end

  def read_all
    puts '-------------------------------------------------------------'
    puts '---------------------LIST OF ALBUMS--------------------------'
    @music_albums.each { |music_album| MusicAlbumView.read_all(music_album) }
    wait
  end

  def create
    @music_albums << MusicAlbumView.create
  end
end
