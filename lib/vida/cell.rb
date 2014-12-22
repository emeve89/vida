class Vida::Cell
  attr_reader :alive, :x, :y

  def initialize(args)
    @alive  = args.fetch(:alive)
    @x      = args.fetch(:x)
    @y      = args.fetch(:y)
  end
end
