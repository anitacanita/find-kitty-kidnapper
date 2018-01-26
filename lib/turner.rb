class Turner

  attr_reader :orientation, :coordinates

  CARDINAL_DIRECTIONS = [:north, :east, :south, :west]

  def initialize
    @current_direction = 0
    @orientation = CARDINAL_DIRECTIONS[@current_direction]
  end


  def turn(direction)
    if direction == 'right'
      turn_right
    else
      turn_left
    end
    @orientation = CARDINAL_DIRECTIONS[@current_direction]
  end

  private

  def turn_right
    if @current_direction == CARDINAL_DIRECTIONS.length - 1
      @current_direction = 0
    else
      @current_direction += 1
    end
  end

  def turn_left
    if @current_direction == 0
      @current_direction = CARDINAL_DIRECTIONS.length - 1
    else
      @current_direction -= 1
    end
  end
end
