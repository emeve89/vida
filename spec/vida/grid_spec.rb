require_relative '../../lib/vida/grid'
require_relative '../../lib/vida/cell'

describe Vida::Grid do
  let(:grid) { Vida::Grid.new }

  it "should respond to rows" do
    expect(grid.respond_to?(:rows)).to eq true
  end
  it "should respond to columns" do
    expect(grid.respond_to?(:columns)).to eq true
  end
  it "should respond to elements" do
    expect(grid.respond_to?(:elements)).to eq true
  end
  it "should respond to live_cells_around" do
    expect(grid.respond_to?(:live_cells_around)).to eq true
  end

  describe "#live_cells_around" do
    it "returns an array with the cells around a given cell" do
      stubbed_response = [
        [Vida::Cell.new(x: 0, y: 0, alive: true), Vida::Cell.new(x: 0, y: 1, alive: true), Vida::Cell.new(x: 0, y: 2, alive: false)],
        [Vida::Cell.new(x: 1, y: 0, alive: false), Vida::Cell.new(x: 1, y: 1, alive: false), Vida::Cell.new(x: 1, y: 2, alive: false)],
        [Vida::Cell.new(x: 2, y: 0, alive: true), Vida::Cell.new(x: 2, y: 1, alive: false), Vida::Cell.new(x: 2, y: 2, alive: false)]
      ]
      grid.stub(:elements).and_return(stubbed_response)
      grid.stub(:columns).and_return(2)
      grid.stub(:rows).and_return(2)

      expect(grid.live_cells_around(grid.elements[0][0])).to eq 1
      expect(grid.live_cells_around(grid.elements[0][1])).to eq 1
      expect(grid.live_cells_around(grid.elements[0][2])).to eq 1
      expect(grid.live_cells_around(grid.elements[1][0])).to eq 3
      expect(grid.live_cells_around(grid.elements[1][1])).to eq 3
      expect(grid.live_cells_around(grid.elements[1][2])).to eq 1
      expect(grid.live_cells_around(grid.elements[2][0])).to eq 0
      expect(grid.live_cells_around(grid.elements[2][1])).to eq 1
      expect(grid.live_cells_around(grid.elements[2][2])).to eq 0
    end
  end

  describe ".initialize method" do
    context 'with arguments' do
      it "creates a grid with the given size" do
        grid_wa = Vida::Grid.new(rows: 10, columns: 15)
        expect(grid_wa.rows).to eq 10
        expect(grid_wa.columns).to eq 15
      end
    end
    context 'without arguments' do
      it "creates a grid with default values" do
        expect(grid.rows).to eq 50
        expect(grid.columns).to eq 50
      end
    end
  end

  describe "Grid elements" do
    it "should be a matrix of Vida::Cell objects" do
      expect(grid.elements.is_a?(Array)).to be true
      grid.elements.each do |column|
        expect(column.is_a?(Array)).to be true
        column.each do |element|
          expect(element.is_a?(Vida::Cell))
        end
      end
    end
  end
end
