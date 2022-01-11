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

  def move_to_archive
    @archived = true if can_be_archived? == true
  end

  def add_label(label)
    @label = label
  end

  private

  def can_be_archived?
    @publish_date > 10
  end
end

# item_1 = Item.new('game','Ahmed','Muhmod','elteta','2020')
# item_1.set_label('label_1')

# p item_1.label
