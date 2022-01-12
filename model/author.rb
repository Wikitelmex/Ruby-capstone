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
      id: @id,
      first_name: @first_name,
      last_name: @last_name
    }
  end

  def self.to_array(myjson, *args)
    return unless myjson

    myjson.map do |obj|
      args[0].new(obj['first_name'], obj['last_name'], obj['id'])
    end
  end

  def add_item(item)
    @items << item unless @items.include?(item)
  end
end
