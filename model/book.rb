require_relative 'item'
class Book < Item
  attr_accessor :publisher, :cover_state, :publish_date

  def initialize(publisher, cover_state, publish_date, archived: false)
    super(publish_date, archived: archived)
    @publisher = publisher
    @cover_state = cover_state
  end

  def to_json(_options = {})
    {
      publisher: @publisher,
      cover_state: @cover_state,
      publish_date: @publish_date,
      id: @id,
      archived: @archived
    }
  end

  def can_be_archived?
    super or @cover_state == 'bad'
  end
end
