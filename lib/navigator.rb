require_relative 'directions_parser.rb'

class Navigator
  include DirectionsParser

  attr_reader :coordinates, :orientation

  CARDINAL_DIRECTIONS = [:north, :east, :south, :west]

  def initialize
    @current_direction = 0
    @orientation = CARDINAL_DIRECTIONS[@current_direction]
    @coordinates = [0,0]
  end

  def move
    case @orientation
    when :north
      @coordinates[1] -= 1
    when :east
      @coordinates[0] += 1
    when :south
      @coordinates[1] += 1
    when :west
      @coordinates[0] -= 1
    else
      raise "FAIL"
    end
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
