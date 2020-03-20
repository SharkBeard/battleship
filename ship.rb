class Ship
  PATROL = 1
  DESTROYER = 2
  SUBMARINE = 3
  BATTLESHIP = 4
  CARRIER = 5

  attr_accessor :type

  def initialize(x: 0, y: 0, type: 0, direction: :horizontal)
    @type = type
    @health = size
    assign_position(x: x, y: y, direction: direction, length: size)
  end

  def hit
    @health -= 1
  end

  def status
    if @health <= 0
      :destroyed
    elsif @health >= size
      :pristine
    else
      :damaged
    end
  end

  def size
    @size ||= calculate_size
  end

  def cells
    @cells ||= generate_cell_list
  end

  private
  def calculate_size
    case @type
    when CARRIER then 5
    when BATTLESHIP then 4
    when SUBMARINE then 3
    when DESTROYER then 3
    when PATROL then 2
    end
  end

  def generate_cell_list
    cells = []
    if @x.is_a? Enumerable
      @x.each do |x|
        cells << [x, @y]
      end
    elsif @y.is_a? Enumerable
      @y.each do |y|
        cells << [@x, y]
      end
    else
      cells << [@x, @y]
    end
    cells
  end

  def assign_position(x:, y:, direction:, length:)
    case direction
    when :horizontal
      @x = x...(x+length)
      @y = y
    when :vertical
      @x = x
      @y = y...(y+length)
    end
  end
end
