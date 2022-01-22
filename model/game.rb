require_relative './item'
require 'date'

class Game < Item
  attr_reader :id
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, publish_date, id = Random.rand(1..999_999), archived = false)
    super(publish_date, id, archived: archived)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def years_since_today(date1)
    today_time = Time.now
    today_date = Date.new(today_time.year, today_time.month, today_time.day)
    mydate1 = Date.parse(date1)
    ((today_date - mydate1) / 365.25).to_i
  end

  def can_be_archived?
    years_since_today(@publish_date) > 10 && years_since_today(@last_played_at) > 2
  end

  def to_json(_options = {})
    {
      multiplayer: @multiplayer,
      last_played_at: @last_played_at,
      publish_date: @publish_date,
      id: @id,
      archived: @archived
    }
  end

  def self.constructor_pattern
    %w[multiplayer last_played_at publish_date id archived]
  end
end
