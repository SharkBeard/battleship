class Ship
  PATROL = 1
  DESTROYER = 2
  SUBMARINE = 3
  BATTLESHIP = 4
  CARRIER = 5

  attr_accessor :type

  def initialize(x: 0, y: 0, type: 0)
    @type = type
  end
end
