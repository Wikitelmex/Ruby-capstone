require_relative '../model/game'
require 'date'

describe Game do
  context 'Initialization tests for game' do
    it '#new without id and archived' do
      game = Game.new('1-2', '2021/12/12', '2021/12/12')
      expect(game).to be_a Game
    end

    it '#new with id and archived' do
      game = Game.new('1-2', '2021/12/12', '2021/12/12', 999_999, true)
      expect(game).to be_a Game
    end

    it '#new with id and archived expecting object with the gived ID' do
      id = 999_999
      game = Game.new('1-2', '2021/12/12', '2021/12/12', id, true)
      expect(game.id).to eq(id)
    end
  end

  context 'Parse Game instance to JSON' do
    it 'Change object to JSON' do
      game = Game.new('1-2', '2021/12/12', '2021/12/12', 999_999, true)
      the_json = {
        multiplayer: '1-2',
        last_played_at: '2021/12/12',
        publish_date: Date.parse('2021/12/12'),
        id: 999_999,
        archived: true
      }
      expect(game.to_json).to eq(the_json)
    end
  end
end
