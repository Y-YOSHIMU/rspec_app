require 'calc'

RSpec.describe Calc do
  context "when normal mode" do
    it "given 2 and 3, returns 5" do
      calc = Calc.new
      expect(calc.add(2, 3)).to eq(5)
    end
  end
  context "when graph mode" do
    it "draws graph" do
    end
  end
end