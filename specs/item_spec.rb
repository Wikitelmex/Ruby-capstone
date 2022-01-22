require_relative '../model/item'

describe Item do
  context 'Initialization tests for Item' do
    it '#new item without id and archived' do
      item = Item.new('2021/12/12')
      expect(item).to be_a Item
    end

    it '#new with id and archived' do
      item = Item.new('2021/12/12', 999_999, archived: true)
      expect(item).to be_a Item
    end
  end
end
