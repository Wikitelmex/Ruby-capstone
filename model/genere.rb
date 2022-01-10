require_relative './item'

class Genere < Item
    attr_accessor :name
    attr_reader :items, :id

    def initialize(genere, author, source, label, publish_date, id, name)
        super(genere, author, source, label, publish_date)
        @id = id
        @name = name
        @items = []
    end

    def add_item(item)
        @items.push(item)
        item.genere = self
    end
end