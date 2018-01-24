class Grid

  attr_reader :coordinates, :orientation

  def initialize
    @orientation = :north
    @coordinates = [0,0]
  end

  def action(instruction)
    if instruction == 'right'
      @orientation = :east
      @coordinates
    end
  end

end
