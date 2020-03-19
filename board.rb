class Board
  attr_accessor :size, :shots

  def initialize(size: 10)
    @size = size
    @shots = Array.new
  end
  
  def fire(x, y)
    @shots << [x, y]
  end
end
