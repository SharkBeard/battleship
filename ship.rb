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

  def size
    case @type
    when CARRIER then 5
    when BATTLESHIP then 4
    when SUBMARINE then 3
    when DESTROYER then 3
    when PATROL then 2
    end
  end
end
