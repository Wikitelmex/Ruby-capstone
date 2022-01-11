module IController
  def read_all
    raise 'Not implemented'
  end

  def create
    raise 'Not implemented'
  end

  private

  def wait
    p 'press any key to continue....'
    gets.chomp
  end
end
