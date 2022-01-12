require_relative '../model/label'

describe Label do
  before :each do
    @label = Label.new('title', 'red')
  end

  it 'match instance of student' do
    expect(@label).to be_instance_of Label
  end

  it 'match  lable title' do
    expect(@label.title).to match 'title'
  end
  it 'match  lable color' do
    expect(@label.color).to match 'red'
  end
  it 'match items array' do
    @label.add_item('label1')
    @label_one = @label.items[0]
    expect(@label_one).to match 'label1'
  end
end
