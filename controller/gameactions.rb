require_relative '../view/gameview'
require_relative 'icontroller'
class GameActions
  include IController

  def initialize(games)
    @games = games
  end

  def read_all
    puts '-------------------------------------------------------------'
    puts '---------------------LIST OF GAMES---------------------------'
    @games.each { |game| GameView.read_all(game) }
    wait
  end

  def create
    @games << GameView.create
  end
end
