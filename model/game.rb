require_relative './item'
require 'date'

class Game < Item
  def initialize(multiplayer, last_played_at = nil, publish_date = nil)
    super(publish_date || Date.new(Time.now.year, Time.now.month, Time.now.day))
    @multiplayer = multiplayer
    @last_played_at = last_played_at || Date.new(Time.now.year, Time.now.month, Time.now.day)
  end

  def can_be_archived?
    today_time = Time.now
    today_date = Date.new(today_time.year, today_time.month, today_time.day)
    (today_date - @publish_date) > 10 && (today_date - @last_played_at) > 730
  end

  def to_json(_options = {})
    {
      id: @id,
      multiplayer: @multiplayer,
      last_played_at: @last_played_at,
      archived: @archived,
      publish_date: @publish_date,
      author_id: @author.id || nil
    }
  end
end
