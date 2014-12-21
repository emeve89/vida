require_relative '../../lib/vida/grid'

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
