class Grid
  attr_reader :rows, :columns

  def initialize(args = {})
    @rows = args.fetch(:rows, 50)
    @columns = args.fetch(:columns, 50)
  end
end
