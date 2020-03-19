class Board
  attr_accessor :size, :shots

  def initialize(size: 10)
    @size = size
    @shots = Array.new
    @safe_range = 0...size
  end
  
  def fire(x, y)
    [x, y].each do |var|
      raise ArgumentError.new('outside of board') if @safe_range.none?(var)
    end
    raise ArgumentError.new('already shot at the space') if @shots.include?([x, y])
      
    @shots << [x, y]
  end
end
