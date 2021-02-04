# this class a SI unit https://en.wikipedia.org/wiki/International_System_of_Units
class SiUnit
    # defines one value.
    # second, meter, etc. are defined as powers
    def initialize(val, s, m, kg, A, K, mon, cd)
        # attribute definition and value assignment
        @value = val
        @second = s
        @metre = m
        @kilogram = kg
        @ampere = A
        @kelvin = K
        @mole = mol
        @candela = cd
    end
end

class Power
    # 6.62607015×10^−34 is (6.62607015, -34)
    def initialize(value, power)
        @value = value
        @power = power
    end
end

# example Planck constant. in J*s = kg * m^2 * s^-2 * s = kg * m^2 * s^-1
plank_contant = SiUnit.new(
    Power.new(6.62607015, -34), # 6.62607015 * 10^-34
    -1, # s (J*s => s^-2*s = s^1) 
    2, # m
    1, # kg
    0, # A
    0, # K
    0, # mol
    0) # cd
