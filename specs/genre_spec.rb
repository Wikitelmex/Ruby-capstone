require_relative '../model/genre'
require_relative '../model/item'

describe Genre do
  context 'Genre Initialization' do
    it '#new without id' do
      g = Genre.new('something')
      expect(g).to be_a Genre
    end

    it '#new with id' do
      g = Genre.new 'something', 123
      expect(g).to be_a Genre
    end
  end

  context 'Adding an item to genre' do
    it 'add item' do
      g = Genre.new('someGenre')
      i = Item.new('12/12/2020')
      g.add_item(i)
      expect(i.genre).to eq g
    end
  end

  context 'Parse genre instance to JSON' do
    it 'Change object to JSON' do
      g = Genre.new('someGenre', 1232)
      the_json = { name: 'someGenre', id: 1232, items: [] }
      expect(g.to_json).to eq(the_json)
    end
  end
end
