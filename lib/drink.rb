class OneDrink
  def initialize(number, price)
    @number = number.to_i
    @price = price.to_i
  end

  def full_price
    @price * @number
  end
end

class FreeDrink
  def initialize(people)
    @people = people.to_i
  end

  def full_price
    1000 * @people
  end
end
