class Label
  attr_reader :id, :items
  attr_accessor :title, :color

  def initialize(title, color, id = Random.rand(1..999_999))
    @id = id
    @title = title
    @color = color
    @items = []
  end

  def to_json(_options = {})
    {
      title: @title,
      color: @color,
      id: @id
    }
  end

  def self.constructor_pattern
    %w[title color id]
  end

  def add_item(item)
    item.label = self
    @items << item unless @items.include?(item)
  end
end
