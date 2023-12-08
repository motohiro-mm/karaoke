class OneDrink
  def initialize(number, price)
    @number = number.to_i
    @price = price.to_i
  end

  def price
    @price * @number
  end
end

