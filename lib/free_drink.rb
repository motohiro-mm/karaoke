class FreeDrink
  def initialize(people)
    @people = people.to_i
  end

  def price
    1000 * @people
  end
end
