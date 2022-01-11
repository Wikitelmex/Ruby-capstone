class Item
  attr_reader :genre, :author, :source, :label

  def initialize(publish_date, id = Random.rand(1..999_999), archived: false)
    @id = id
    @archived = archived
    @publish_date = publish_date
  end

  def can_be_archived?
    today_time = Time.now
    today_date = Date.new(today_time.year, today_time.month, today_time.day)
    (today_date - @publish_date) > 10
  end

  def move_to_archive
    @archived = true if can_be_archived? == true
  end

  def genre=(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end
end
