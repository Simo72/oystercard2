class Oystercard
  attr_reader :balance
  MAXIMUM_BALANCE = 90

  def initialize()
    @balance = 0
    @in_journey = false
  end

  def top_up(amount)
      raise "Maximum balance of #{MAXIMUM_BALANCE} exceeded" if @balance + amount > MAXIMUM_BALANCE
      @balance = @balance + amount
  end

  def deduct(amount)
  	@balance -= amount
  end

  def tap_in
    @in_journey = true
  end

end
