require_relative 'api_caller.rb'
require_relative 'mover.rb'
require_relative 'turner.rb'

class Navigator

  attr_reader :coordinates, :orientation

  CARDINAL_DIRECTIONS = [:north, :east, :south, :west]

  def initialize(mover=Mover.new, turner=Turner.new)
    @mover = mover
    @turner = turner
  end

  def navigate
    directions = APICaller.get_directions
    directions.map do |direction|
      if direction == 'forward'
        @mover.move(@turner.orientation)
      else
        @turner.turn(direction)
      end
    end
    APICaller.set_location(@mover.coordinates)
  end

end
