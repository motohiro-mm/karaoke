require 'time'

class StayingTime
  def initialize(enter_time, exit_time, number)
    @enter_time = enter_time
    @exit_time = exit_time
    @number = number.to_i
  end

  def price
    total_time * @number * 150
  end

  def total_time
    ((Time.parse(@exit_time) - Time.parse(@enter_time)) / 3600).ceil
  end
end

