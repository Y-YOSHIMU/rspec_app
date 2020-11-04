require 'calc'

RSpec.describe Calc do
  it {
    calc = Calc.new
    expect(calc.add(2, 3)).to eq(5) # matcher
    expect(calc.add(2, 3)).not_to eq(5)
    expect(calc.add(2, 3)).to be true
    expect(calc.add(2, 3)).to be false
    expect(calc.add(2, 3)).to be > 10
    expect(calc.add(2, 3)).to be_between(1, 10).inclusive
    expect(calc).to respond_to(:add)
    expect(calc.add(2, 3).integer?).to be true # integer? empty?
    expect(calc.add(2, 3)).to be_integer # integer?と同じ
  }
end

# matcher 公式ドキュメント「RSpec Expectations」のモジュール「Built in matchers」