require_relative '../model/book'

describe Book do
  before :each do
    @book = Book.new('Ahmed', 'good', '2010/01/22')
    @book_two = Book.new('zezo', 'bad', '2015/03/20')
    @book_three = Book.new('zezo', 'good', '2015/03/20')
  end

  it 'shows instance of book class' do
    expect(@book).to be_instance_of Book
  end
  it 'match book publisher' do
    expect(@book.publisher).to match 'Ahmed'
  end
  it 'match cover state of the book' do
    expect(@book.cover_state).to match 'good'
  end

  it 'matche can_be_archived? if data is more than 10 years' do
    expect(@book.can_be_archived?).to match true
  end

  it 'matche can_be_archived? if cover state equal bad' do
    expect(@book_two.can_be_archived?).to match true
  end
  it 'matche can_be_archived?
   if cover state is not to equal bad and
     the date of publishment is less than 10 years ' do
    expect(@book_three.can_be_archived?).to match false
  end
  it 'test move_to_archive in case
   can_be_archived return true and in case of false too' do
    expect(@book_two.move_to_archive).to match true
    expect(@book_three.move_to_archive).to match nil
  end
end
