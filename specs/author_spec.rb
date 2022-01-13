require_relative '../model/author'
require 'json'

describe Author do
  context 'Author Initialization' do
    it '#new without id being Author object' do
      f_name = 'alex'
      l_name = 'castillo'
      author = Author.new(f_name, l_name)
      expect(author).to be_a Author
    end

    it '#new with id match id' do
      f_name = 'alex'
      l_name = 'castillo'
      id = 123_456
      author = Author.new(f_name, l_name, id)
      expect(author.id).to eq(id)
    end

    it '#new without id being same name but capitalized' do
      f_name = 'aLex'
      l_name = 'castiLLO'
      author = Author.new(f_name, l_name)
      expect(author.first_name).to eq('Alex')
      expect(author.last_name).to eq('Castillo')
    end
  end

  context 'Testing to_json method' do
    it 'add item and parse it to json' do
      f_name = 'alex'
      l_name = 'castillo'
      id = 123_456
      myjson = { first_name: 'Alex', id: 123_456, last_name: 'Castillo' }
      author = Author.new(f_name, l_name, id)
      expect(author.to_json).to eq(myjson)
    end
  end
end
