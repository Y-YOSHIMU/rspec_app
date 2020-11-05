require 'calc'

RSpec.describe Calc do
  subject(:calc) { Calc.new } #ローカル変数としてそれぞれのexampleで使用できる・推奨
  # let
  context "tax 5%" do
    let(:tax) { 0.05 }
    it { expect(calc.price(100, tax)).to eq(105)}
  end
  context "tax 8%" do
    let(:tax) { 0.08 }
    it { expect(calc.price(100, tax)).to eq(108)}
  end
end

# matcher 公式ドキュメント「RSpec Expectations」のモジュール「Built in matchers」