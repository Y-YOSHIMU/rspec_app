require 'calc'

RSpec.describe Calc do
  subject(:calc) { Calc.new } #ローカル変数としてそれぞれのexampleで使用できる・推奨
  it {
    # calc = Calc.new
    expect(calc.add(2, 3)).to eq(5)
  }
end

# matcher 公式ドキュメント「RSpec Expectations」のモジュール「Built in matchers」