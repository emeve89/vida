class Vida::Grid
  attr_reader :rows, :columns, :elements

  def initialize(args = {})
    @rows       = args.fetch(:rows, 50)
    @columns    = args.fetch(:columns, 50)
    @elements  = Array.new(rows).map! do |r|
      r = Array.new(columns, Vida::Cell.new)
    end
  end
end
