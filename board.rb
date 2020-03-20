class Board
  attr_accessor :size, :shots, :ships

  def initialize(size: 10)
    @size = size
    @shots = Array.new
    @ships = Array.new
    @safe_range = 0...size
  end
  
  def fire(coords)
    raise ArgumentError.new('already shot at the space') if @shots.include?(coords)

    @shots << coords if location_valid?(coords)
  end

  def place(ship:)
    @ships << ship
  end

  private
  def location_valid?(coords)
    coords.each do |var|
      raise ArgumentError.new('outside of board') if @safe_range.none?(var)
    end
    true
  end
end
