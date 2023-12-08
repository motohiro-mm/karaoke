class SumPrice
  def initialize(row)
    if row[1] == "header" && row[3] == "free_drink"
      drink = FreeDrink.new(row[4])
      puts drink.full_price
    elsif row[1] == "drink"
      drink = OneDrink.new(row[2], row[3])
      puts drink.full_price
    end
  end
end
