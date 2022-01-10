class Item
  attr_reader :id, :archived
  def initialize(genre, author, source, label, publish_date)
    @id = Random.rand(1..999_999)
    @archived = false
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
  end
end
