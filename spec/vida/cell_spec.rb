require_relative '../../lib/vida/cell'

describe Vida::Cell do
  let(:cell) { Vida::Cell.new }

  it "should respond to alive" do
    expect(cell.respond_to?(:alive)).to eq true
  end

  describe ".initialize" do
    it "should be dead" do
      expect(cell.alive).to eq false
    end
  end
end
