class Human
  def initialize(new)
    @alertness = 0.0
  end
  def alertness
    @alertness
  end
  def has_coffee?
  end
  def needs_coffee?
    true
  end
  def buy(tsmf)
  end

  def drink!
    @alertness = 0.33
  end
end
