
class PowerValue
    # 6.62607015×10^−34 is (6.62607015, -34)
    def initialize(value, power)
        @value = value # float
        @power = power # int
    end

    def calculate
        if @power == 1
            return @value
        else
            return @value * 10 ** @power
    end
end
