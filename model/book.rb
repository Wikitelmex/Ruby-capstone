require_relative 'item'
class Book < Item
  attr_accessor :genre, :author, :source, :label, :publish_date

  def initialize(publisher, cover_state, publish_date)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super or @cover_state == 'bad'
  end
end

# book_one = Book.new('Z3zo3', 'bad', 'game', 'Ahmed', 'Muhmod', 'elteta', 6)

# p book_one.source

# # item_one = Item.new('game','Ahmed','Muhmod','elteta',50)

# p book_one.can_be_archived?
