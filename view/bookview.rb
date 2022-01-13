require_relative '../model/book'

class BookView
  def self.read_all(book)
    puts "publisher #{book.publisher} cover_state: #{book.cover_state} publish_date: #{book.publish_date}"
  end

  def self.create
    puts 'Add book to colliction'
    puts 'Please enter publisher name'
    publisher = gets.chomp
    puts 'Please enter cover state'
    cover_state = gets.chomp
    puts 'Please enter publishe date in formate yy/mm/dd'
    date = gets.chomp
    Book.new(publisher, cover_state, date)
  end
end
