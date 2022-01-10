require_relative './item'

class Genere < Item
    attr_accessor :name
    attr_reader :items

    def initialize(genere, author, source, label, publish_date, name)
        super(genere, author, source, label, publish_date)
        @name = name
        @items = []
    end

    def add_item(item)
        @items.push(item)
        item.genere = self
    end
end