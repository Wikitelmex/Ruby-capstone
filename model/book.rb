require_relative 'item'
class Book < Item
  attr_accessor :publisher, :cover_state, :publish_date

  def initialize(publisher, cover_state, publish_date, archived: false)
    super(publish_date, archived: archived)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super or @cover_state == 'bad'
  end
end

book_one = Book.new('Z3zo3', 'bad', '2015-10-5', archived: true)

# item_one = Item.new('game','Ahmed','Muhmod','elteta',50)

p book_one.move_to_archive
