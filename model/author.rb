class Author
  attr_reader :id, :items
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name, id = Random.rand(1..999_999))
    @first_name = first_name
    @last_name = last_name
    @id = id
    @items = []
  end

  def to_json(_options = {})
    {
      id: @id,
      first_name: @first_name,
      last_name: @last_name
    }
  end

  def add_item(item)
    @items << item unless @items.include?(item)
  end
end
