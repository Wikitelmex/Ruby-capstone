class X
  attr_accessor :zed

  def initialize(zed = nil)
    @zed = zed
  end
end

med = X.new(5)

m = med.zed || 'not exists'

p m
