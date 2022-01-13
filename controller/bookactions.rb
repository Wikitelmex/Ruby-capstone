require_relative '../view/bookview'
require_relative 'icontroller'
class BookActions
  include IController

  def initialize(book)
    @book = book
  end

  def read_all
    @book.each { |book| BookView.read_all(book) }
    wait
  end

  def create
    @book << BookView.create
  end
end
