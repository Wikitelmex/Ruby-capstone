require_relative './item'
require 'date'
require 'pry'

class Game < Item
  attr_reader :id
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, publish_date, id = Random.rand(1..999_999), archived = false)
    super(publish_date, id, archived: archived)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    today_time = Time.now
    today_date = Date.new(today_time.year, today_time.month, today_time.day)
    (today_date - Date.parse(@publish_date)) > 36_525 && (today_date - Date.parse(@last_played_at)) > 730
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
