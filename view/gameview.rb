require_relative '../model/game'

class GameView
  def self.read_all(game)
    puts "id: #{game.id} multiplayer: #{game.multiplayer}"
    puts "published date: #{game.publish_date} last played date: #{game.last_played_at}"
    40.times { print '-' }
    puts
  end

  def self.create
    puts 'Add game to collection'
    puts 'number of players (ex: 1-4)'
    multiplayer = gets.chomp
    puts "Last played date? [#{Date.new(Time.now.year, Time.now.month, Time.now.day).strftime('%Y/%m/%d')}]"
    last_played_at = gets.chomp
    puts "Please enter publish date [#{Date.new(Time.now.year, Time.now.month, Time.now.day).strftime('%Y/%m/%d')}]"
    publish_date = gets.chomp
    Game.new(multiplayer, last_played_at, publish_date)
  end
end
