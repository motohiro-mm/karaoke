class FreeDrink
  def initialize(people)
    @people = people.to_i
  end

  FREE_DRINK_PRICE = 500
  def price
    FREE_DRINK_PRICE * @people
  end
end
