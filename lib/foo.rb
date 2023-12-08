class Foo
  def initialize(row)
    if row[1] == "drink"
      drink = Drink.new(row[2], row[3])
      puts drink.full_price
    end
  end
end
