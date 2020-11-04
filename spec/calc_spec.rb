require 'calc'

RSpec.describe Calc do
  # itは example / specify で書き換えられる
  #itの後省略するとRSpecが文章を自動生成する
  #do endは{}で置き換えることができる
  it {
    calc = Calc.new
    expect(calc.add(2, 3)).to eq(5)
  }
  it "draws graph" # pending
end