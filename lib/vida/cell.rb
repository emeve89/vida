class Vida::Cell
  attr_reader :alive, :x, :y

  def initialize(args)
    @alive  = args.fetch(:alive)
    @x      = args.fetch(:x)
    @y      = args.fetch(:y)
  end

  def update_status(live_cells_around)
    @alive = alive ? (2..3) === live_cells_around : 3 == live_cells_around
  end

  def to_s
    alive ? 'o' : ' '
  end
end
