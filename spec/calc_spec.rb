require 'calc'

# test double: 代役オブジェクト
# method stub

RSpec.describe Calc do
  it {
    # userのnameメソッド実装前にテストしたい
    user = double('user')
    allow(user).to receive(:name).and_return('yuya')
    # user.name => yuya 代役オブジェクトができる
    calc = Calc.new
    expect(calc.add(5, 2, user.name)).to eq('7 by yuya')
  }
end

# matcher 公式ドキュメント「RSpec Expectations」のモジュール「Built in matchers」