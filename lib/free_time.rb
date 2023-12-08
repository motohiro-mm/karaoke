class FreeTime
    def initialize(number)
        @number = number.to_i
    end

    def price 
        @number * 1000
    end
end
