class SumPrice
  def initialize(row)
    if row[1] == "header" && row[3] == "free_drink"
      drink = FreeDrink.new(row[4])
      puts drink.price
    elsif row[1] == "drink"
      drink = OneDrink.new(row[2], row[3])
      puts drink.price
    end

    if row[1] == "header" && row[2] == "time_base"
      time_table = StayingTime.new(row[0], row[4])
    elsif row[2] == "free_time"
      free_time = FreeTime.new(row[4])
      puts free_time.price
    end
  end
end
