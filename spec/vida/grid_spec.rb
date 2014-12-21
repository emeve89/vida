require_relative '../../lib/vida/grid'

describe Grid do
  it "should respond to rows" do
    expect(Grid.new.respond_to?(:rows)).to eq true
  end
  it "should respond to columns" do
    expect(Grid.new.respond_to?(:columns)).to eq true
  end
  describe ".initialize method" do
    context 'with arguments' do
      it "creates a grid with the given size" do
        grid = Grid.new(rows: 10, columns: 15)
        expect(grid.rows).to eq 10
        expect(grid.columns).to eq 15
      end
    end
    context 'without arguments' do
      it "creates a grid with default values" do
        grid = Grid.new
        expect(grid.rows).to eq 50
        expect(grid.columns).to eq 50
      end
    end
  end
end
