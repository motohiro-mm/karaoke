class Drink
  def initialize(number, price)
    @number = number.to_i
    @price = price.to_i
  end

  def full_price
    @price * @number
  end
end
