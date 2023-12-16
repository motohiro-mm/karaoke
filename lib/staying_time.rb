require 'time'

class StayingTime
  def initialize(enter_time, number)
    @enter_time = enter_time
    @number = number.to_i
  end

  def price(exit_time)
    total_time = ((Time.parse(exit_time) - Time.parse(@enter_time)) / 3600).ceil
    total_time * @number * 150
  end
end

