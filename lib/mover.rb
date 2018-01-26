class Mover

  attr_reader :coordinates

  def initialize
    @coordinates = [0,0]
  end

  def move(direction)
    case direction
    when :north
      @coordinates[1] += 1
    when :east
      @coordinates[0] += 1
    when :south
      @coordinates[1] -= 1
    when :west
      @coordinates[0] -= 1
    else
      raise "FAIL"
    end
  end
end
