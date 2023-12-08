class FreeDrink
  def initialize(people)
    @people = people.to_i
  end

  def full_price
    1000 * @people
  end
end
