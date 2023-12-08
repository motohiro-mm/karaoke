class TimeTable
    def initialize(enter_time, number)
        @enter_time = enter_time
        @number = number
    end

    def price(exit_time)
        total_time = exit_time - @enter_time
        total_time * @number
    end
end

