require_relative '../../lib/vida/cell'

describe Vida::Cell do
  let(:cell) { Vida::Cell.new(x: 5, y: 5, alive: false) }

  it "should respond to alive" do
    expect(cell.respond_to?(:alive)).to eq true
  end
  it "should respond to x" do
    expect(cell.respond_to?(:x)).to eq true
  end
  it "should respond to y" do
    expect(cell.respond_to?(:y)).to eq true
  end

  describe ".initialize method" do
    it "sets all the object attributes" do
      expect(cell.x).to eq 5
      expect(cell.y).to eq 5
      expect(cell.alive).to eq false
    end
  end
  describe "#update_status" do
    context "with a living cell" do
      c = Vida::Cell.new(x: 5, y: 5, alive: true)
      it "sets alive to true if argument is 2 or 3" do
        expect(c.update_status(2)).to eq true
      end
      it "sets alive to false if arguments is not 2 or 3" do
        expect(c.update_status(1)).to eq false
      end
    end
    context "with a dead cell" do
      c = Vida::Cell.new(x: 5, y: 5, alive: false)
      it "sets aliva to true if argument is 3" do
        expect(c.update_status(3)).to eq true
      end
      it "sets alive to false if argument is not 3" do
        expect(c.update_status(1)).to eq false
      end
    end
  end

  describe "#to_s" do
    it "returns 'o' if the cell is alive" do
      c = Vida::Cell.new(x: 5, y:5, alive: true)
      expect(c.to_s).to eq "o"
    end
    it "returns ' ' if the cell is dead" do
      c = Vida::Cell.new(x: 5, y:5, alive: false)
      expect(c.to_s).to eq " "
    end
  end
end
