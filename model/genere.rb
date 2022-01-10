class Genere
  attr_accessor :name
  attr_reader :items, :id

  def initialize(name, id = Random.rand(1..999_999))
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.genere = self
  end
end
