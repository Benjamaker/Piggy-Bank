class PiggyBank
  def initialize
    @coins = 0

  end

  def put_coins(n)
    @coins += n
  end

  def shake
    "clink!" unless @coins == 0
  end

  def break
    @coins
  end

end
