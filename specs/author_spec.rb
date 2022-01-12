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

  context 'Testing to_array method, that converts an JSON array to an object array of Author class type' do
    it 'JSON array to array of Authors' do
      file_fake = %{(
          [
            {"id":356433,"first_name":"Alex","last_name":"Castillo"},
            {"id":889139,"first_name":"Ahmed","last_name":"Adel"},
            {"id":566284,"first_name":"Wahidulla","last_name":"Shadab"}
          ]
        )}.gsub(/([() ])/, ' ').strip
      myjson = JSON.parse(file_fake)
      authors = Author.to_array(myjson, Author)
      expect(authors[0].first_name).to eq('Alex')
      expect(authors[1].first_name).to eq('Ahmed')
    end
  end
end
