require_relative './item'
class MusicAlbum < Item
  attr_reader :id
  attr_accessor :on_spotify

  def initialize(publish_date, on_spotify, id = Random.rand(1..999_999), archived = false)
    super(publish_date, id, archived: archived)
    @on_spotify = on_spotify
  end

  def to_json(_options = {})
    {
      publish_date: @publish_date,
      on_spotify: @on_spotify,
      id: @id,
      archived: @archived
    }
  end

  def self.constructor_pattern
    %w[publish_date on_spotify id archived]
  end

  private

  def can_be_archived?
    on_spotify ? super : false
  end
end
