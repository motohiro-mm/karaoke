class SumPrice
  def initialize(data)
    @drink = 
      if data[0].include?("free_drink")
        FreeDrink.new(data[0][4])
      elsif data[0].include?("one_drink")
        OneDrink.new(data[1][2], data[1][3])
      else
        raise "ドリンクデータが不正です。データを確認してください。"
      end

    @time =
      if data[0].include?("time_base")
        StayingTime.new(data[0][0], data[2][0], data[0][4])
      elsif data[0].include?("free_time")
        FreeTime.new(data[0][4])
      else
        raise "利用コースが不正です。データを確認してください。"
      end
  end

  def total
    time_price = @time.price
    drink_price = @drink.price
    puts "基本料金: #{time_price}円"
    puts "飲み物代: #{drink_price}円"
    puts "合計金額: #{time_price + drink_price}円"
  end
end
