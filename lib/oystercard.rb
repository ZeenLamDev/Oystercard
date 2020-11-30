require './lib/station'

class Oystercard
  MAXIMUM_BALANCE = 10

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(money)
    fail "exceeded maximum balance" if exceed_balance?(0)

    @balance = @balance + money
  end

  def deduct_fare(fare)
    @balance = @balance - fare
  end

  def touch_in
  end
  
  def touch_out
  end

  private
  def exceed_balance?(money)
    @balance + money >= MAXIMUM_BALANCE
  end

end
