require 'calc'

RSpec.describe Calc do
  subject(:calc) { Calc.new } #ローカル変数としてそれぞれのexampleで使用できる・推奨
  # let
  # 1. exampleごとに結果がキャッシュされる
  # 2. 遅延評価
  let!(:tax) {
    calc.tax = 0.05
  }
  it { expect(tax).to eq(0.05) }
  it { expect(calc.price(100)).to eq(105) }
end

# matcher 公式ドキュメント「RSpec Expectations」のモジュール「Built in matchers」