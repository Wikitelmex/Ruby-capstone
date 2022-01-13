require_relative '../model/label'
require_relative '../model/item'
describe Label do
  before :each do
    @label = Label.new('title', 'red')
    @item = Item.new('2010/02/01')
  end

  it 'match instance of label' do
    expect(@label).to be_instance_of Label
  end

  it 'match  lable title' do
    expect(@label.title).to match 'title'
  end
  it 'match  lable color' do
    expect(@label.color).to match 'red'
  end
  it 'match items array' do
    @label.add_item(@item)
    expect(@label.items.length).to eq 1
    expect(@label.items).to include @item
  end
end
