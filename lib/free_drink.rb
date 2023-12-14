class FreeDrink
  def initialize(people)
    @people = people.to_i
  end

  def price
    500 * @people
  end
end
