class SumPrice
  def initialize(data)
    @drink_price = 
      if data[0].include?("free_drink")
        drink = FreeDrink.new(data[0][4])
        drink.price
      elsif data[0].include?("one_drink")
        drink = OneDrink.new(data[1][2], data[1][3])
        drink.price
      end

    if data[0].include?("time_base")
      time_table = StayingTime.new(data[0][0], data[0][4])
      exit_time = data[2][0]
      @time_price = time_table.price(exit_time)
    elsif data[0].include?("free_time")
      free_time = FreeTime.new(data[0][4])
      @time_price = free_time.price
    end
  end

  def total
    puts "基本料金: #{@time_price}円"
    puts "飲み物代: #{@drink_price}円"
    puts "合計金額: #{@drink_price + @time_price}円"
  end
end
