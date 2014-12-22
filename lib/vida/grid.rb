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

  def live_cells_around(cell)
    cells = []
    cells << [
      north(cell),
      south(cell),
      west(cell),
      east(cell),
      ul_corner(cell),
      ur_corner(cell),
      dl_corner(cell),
      dr_corner(cell)
    ]
    cells.flatten!.count { |c| !c.nil? && c.alive == true }
  end

  def update_cells
    elements.each do |column|
      column.each do |element|
        element.update_status(live_cells_around(element))
      end
    end
  end

  private

  def to_s
    elements.each do |c|
      c.each do |r|
        print r
      end
      print "\n"
    end
  end

  def north(cell)
    if cell.y > 0
      elements[cell.x][cell.y - 1]
    end
  end

  def south(cell)
    if cell.y < (rows - 1)
      elements[cell.x][cell.y + 1]
    end
  end

  def west(cell)
    if cell.x > 0
      elements[cell.x - 1][cell.y]
    end
  end

  def east(cell)
    if cell.x < (columns - 1)
      elements[cell.x + 1][cell.y]
    end
  end

  def ul_corner(cell)
    if cell.x > 0 && cell.y > 0
      elements[cell.x - 1][cell.y - 1]
    end
  end

  def ur_corner(cell)
    if cell.x < (columns - 1) && cell.y > 0
      elements[cell.x + 1][cell.y - 1]
    end
  end

  def dl_corner(cell)
    if cell.x > 0 && cell.y < (rows - 1)
      elements[cell.x - 1][cell.y + 1]
    end
  end

  def dr_corner(cell)
    if cell.x < (columns - 1) && cell.y < (rows - 1)
      elements[cell.x + 1][cell.y + 1]
    end
  end

  def random_status
    [true, false].sample
  end
end
