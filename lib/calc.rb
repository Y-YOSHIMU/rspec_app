class Calc

  def initialize(logger)
    @logger = logger
  end

  def add(a, b)
    @logger.log
    a + b
  end
end