require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(publish_date, on_spotify, id = Random.rand(1..999_999), archived: false)
    super(publish_date, id , archived: archived)
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    on_spotify ? super : false
  end
end
