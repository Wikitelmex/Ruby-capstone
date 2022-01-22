require_relative './icontroller'
require_relative '../view/labelview'

class LabelActions
  include IController

  def initialize(labels)
    @labels = labels
  end

  def read_all
    puts '-------------------------------------------------------------'
    puts '---------------------LIST OF LABELS--------------------------'
    @labels.each { |label| LabelView.list_labels(label.id, label.title, label.color) }
    wait
  end

  def create
    @labels << LabelView.new_label
  end
end
