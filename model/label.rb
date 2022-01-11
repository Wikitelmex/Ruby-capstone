class Label
  attr_reader :id, :items

  def initialize(title, color)
    @id = Random.rand(1..999_999)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    item.label = self
  end
end
