class Vida::Grid
  attr_reader :rows, :columns, :elements

  def initialize(args = {})
    @rows       = args.fetch(:rows, 50)
    @columns    = args.fetch(:columns, 50)
    @elements   = Array.new(rows) do |row|
      Array.new(columns) do |column|
        Vida::Cell.new(x: column, y: row, alive: random_status)
      end
    end
  end

  private

  def random_status
    [true, false].sample
  end
end
