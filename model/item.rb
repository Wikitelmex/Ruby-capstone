class Item
  attr_reader :id, :archived
  attr_accessor :genere, :author, :source, :label

  def initialize(genere, author, source, label, publish_date)
    @id = Random.rand(1..999_999)
    @archived = false
    @genere = genere
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
  end

  def can_be_archived?
    @publish_date > 10
  end

  def move_to_archive
    @archived = true if can_be_archived? == true
  end
end
