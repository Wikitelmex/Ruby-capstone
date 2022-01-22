class Author
  attr_reader :id, :items
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name, id = Random.rand(1..999_999))
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
    @id = id
    @items = []
  end

  def to_json(_options = {})
    {
      first_name: @first_name,
      last_name: @last_name,
      id: @id
    }
  end

  def self.constructor_pattern
    %w[first_name last_name id]
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.author = self
  end
end
