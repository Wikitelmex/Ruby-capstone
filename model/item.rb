require 'date'

class Item
  attr_reader :genre, :author, :source, :label

  def initialize(publish_date, id = Random.rand(1..999_999), archived: false)
    @id = id
    @archived = archived
    @publish_date = Date.parse(publish_date)
    @author = nil
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  def genre=(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def author=(author)
    @author = author
    author.add_item(self)
  end

  def add_label(label)
    @label = label
  end

  private

  def can_be_archived?
    today_time = Time.now
    today_date = Date.new(today_time.year, today_time.month, today_time.day)
    (today_date - @publish_date) > (365.25 * 10).to_i
  end
end
