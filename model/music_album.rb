require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(publish_date, on_spotify)
    super(publish_date)
    @on_spotify = on_spotify
  end

  private
  
  def can_be_archived?
    on_spotify ? super : false
  end
end
