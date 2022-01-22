require_relative '../model/author'
class AuthorView
  def self.list_authors(id, first_name, last_name)
    p "Author Id: #{id}, Name: #{first_name} #{last_name}"
  end

  def self.new_author
    p 'Create a new Author'
    print 'First Name: '
    first_name = gets.chomp
    print 'Last Name: '
    last_name = gets.chomp
    Author.new(first_name, last_name)
  end
end
