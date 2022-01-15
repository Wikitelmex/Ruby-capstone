require_relative './icontroller'
require_relative '../view/authorview'

class AuthorActions
  include IController

  def initialize(authors)
    @authors = authors
  end

  def read_all
    puts '-------------------------------------------------------------'
    puts '---------------------LIST OF AUTHORS-------------------------'
    @authors.each { |author| AuthorView.list_authors(author.id, author.first_name, author.last_name) }
    wait
  end

  def create
    @authors << AuthorView.new_author
  end
end
