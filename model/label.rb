class Label
  attr_reader :id, :items
  attr_accessor :title, :color

  def initialize(title, color, id = Random.rand(1..999_999))
    @id = id
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    # item.label = self
  end
end
