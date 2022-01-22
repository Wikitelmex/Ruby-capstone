require_relative '../model/genre'

class GenreView
  def self.list_genres(genre)
    puts "ID: #{genre.id} Name: #{genre.name}"
  end

  def self.create
    puts 'Enter the genre'
    name = gets.chomp
    Genre.new(name)
  end
end
