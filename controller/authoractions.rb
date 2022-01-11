require './icontroller'
require_relative '../view/authorview'

class AuthorActions
  include IController

  def initialize(authors)
    @authors = authors
  end

  def read_all
    @authors.each { |author| AuthorView.list_authors(author.id, author.first_name, author.last_name) }
  end

  def create
    @authors << AuthorView.create
  end
end
