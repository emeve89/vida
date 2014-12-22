class Vida::Game
  attr_reader :grid

  def initialize(grid)
    @grid = grid
  end

  def play
    loop do
      next_generation
      system('clear')
      puts grid
    end
  end

  def next_generation
    grid.update_cells
  end
end
