require_relative './item'
class Game < Item
  def initialize(multiplayer, last_played_at = Time.now, publish_date = Time.now)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def can_be_archived?
    today_time = Time.now
    today_date = Date.new(today_time.year, today_time.month, today_time.day)
    (today_date - @publish_date) > 10 && (today_date - @last_played_at) > 730
  end
end
