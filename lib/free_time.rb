class FreeTime
    def initialize(number)
        @number = number.to_i
    end

    FREE_TIME_PRICE = 1000
    def price 
        @number * FREE_TIME_PRICE
    end
end
