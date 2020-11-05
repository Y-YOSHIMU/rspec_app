class Calc

  attr_accessor :tax

  def initialize
    @tax = 0
  end

  def price(x)
    x * (1 + tax)
  end
end