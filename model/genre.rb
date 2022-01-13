class Genre
  attr_accessor :name
  attr_reader :items, :id

  def initialize(name, id = Random.rand(1..999_999), items = [])
    @id = id
    @name = name
    @items = items
  end

  def add_item(item)
    @items.push(item) unless @items.include?(item)
    item.genre = self
  end

  def to_json(_options = {})
    {
      name: @name,
      id: @id, 
      items: @items
    }
  end

  def self.constructor_pattern
    %w[name id items]
  end
end
