require_relative '../model/label'
class LabelView
  def self.list_labels(id, title, color)
    p "Label Id: #{id}, label title: #{title} color: #{color}"
  end

  def self.new_label
    p 'Create a new Label'
    print 'Label title: '
    title = gets.chomp
    print 'Label color: '
    color = gets.chomp
    Label.new(title, color)
  end
end
