require_relative 'item'
class Book < Item
  attr_accessor :genre, :author, :source, :label, :publish_date

  def initialize(publisher, cover_state, *args)
    super(args[0], args[1], args[2], args[3], args[4])
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super or @cover_state == 'bad'
  end
end

# book_one = Book.new('Z3zo3', 'done', 'game', 'Ahmed', 'Muhmod', 'elteta', 11)

# p book_one.source

# # item_one = Item.new('game','Ahmed','Muhmod','elteta',50)

# p book_one.can_be_archived?
