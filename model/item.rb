class Item
  attr_reader :genere, :author, :source, :label

  def initialize(publish_date, id = Random.rand(1..999_999))
    @id = id
    @archived = false
    @publish_date = publish_date
  end

  def can_be_archived?
    @publish_date > 10
  end

  def move_to_archive
    @archived = true if can_be_archived? == true
  end

  def genere=(genere)
    @genere = genere
    genere.items.push(self) unless genere.items.include?(self)
  end
end
