class Vida::Cell
  attr_reader :alive, :x, :y

  def initialize(position)
    @alive = false
    @x    = position.fetch(:x)
    @y    = position.fetch(:y)
  end
end
