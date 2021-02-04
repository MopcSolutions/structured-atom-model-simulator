# this class a SI unit https://en.wikipedia.org/wiki/International_System_of_Units
class SiUnit
    # defines one value.
    # second, meter, etc. are defined as powers
    # example: Joule is kg⋅m^2⋅s^−2 => kg = 1, m = 2, s = -2, A = 0, K = 0, mon = 0, cd = 0
    def initialize(s, m, kg, A, K, mon, cd)
        # powers as si units
        @second = s # example: 2 for s², -2 for 1/s²
        @metre = m
        @kilogram = kg
        @ampere = A
        @kelvin = K
        @mole = mol
        @candela = cd
    end
end

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

class SiValue
    def initialize(powered_value, si_unit)
        # value as PowerValue class: value ^ power
        @value = powered_value
        # unit as SiUnit class
        @unit = si_unit
    end
end

# derived units return si unit powers
class BaseUnits
    # s^p
    def Second(p)
        return SiUnit.new(p, 0, 0, 0, 0, 0, 0)
    end
    # m^p
    def Meter(p)
        return SiUnit.new(0, p, 0, 0, 0, 0, 0)
    end
    # kg^p
    def Kilogram(p)
        return SiUnit.new(0, 0, p, 0, 0, 0, 0)
    end
    # A^p -> https://en.wikipedia.org/wiki/Ampere
    def Ampere(p)
        return SiUnit.new(0, 0, 0, p, 0, 0, 0)
    end
    # K^p
    def Kelvin(p)
        return SiUnit.new(0, 0, 0, 0, p, 0, 0)
    end
    # mol^p
    def Mole(p)
        return SiUnit.new(0, 0, 0, 0, 0, p, 0)
    end
    # cd^p
    def Candela(p)
        return SiUnit.new(0, 0, 0, 0, 0, 0, p)
    end
end

# derived units return si unit powers
class DerivedUnits < BaseUnits
    # https://en.wikipedia.org/wiki/Joule
    def Joule
        return Kilogram(1) * Meter(2) * Second(-2)
    end
    # https://en.wikipedia.org/wiki/Newton_(unit)
    def Newton 
        return Kilogram(1) * Meter(1) * Second(-2)
    end
    # https://en.wikipedia.org/wiki/Pascal_(unit)
    def Pascal
        return Kilogram(1) * Meter(-1) * Second(-2)
    end
    # https://en.wikipedia.org/wiki/Watt
    def Watt
        return Kilogram(1) * Meter(2) * Second(-3)
    end
    # https://en.wikipedia.org/wiki/Coulomb
    def Coulomb
        return Ampere(1) * Second(1)
    end
    # https://en.wikipedia.org/wiki/Volt
    def Volt
        return Kilogram(1) * Meter(2) * Second(-3) * Ampere(-1)
    end
    # https://en.wikipedia.org/wiki/Ohm
    def Ohm
        return Kilogram(1) * Meter(2) * Second(-3) * Ampere(-2)
    end
    # https://en.wikipedia.org/wiki/Hertz
    def Hertz
        return Second(-1)
    end
    # https://en.wikipedia.org/wiki/Becquerel
    def Becquerel
        return Second(-1)
    end
    # https://en.wikipedia.org/wiki/Gray_(unit)
    def Gray
        return Meter(2) * Second(-2)
    end
    # https://en.wikipedia.org/wiki/Sievert
    def Sievert
        return Meter(2) * Second(-2)
    end
    # https://en.wikipedia.org/wiki/Farad
    def Farad
        return Kilogram(-1) * Meter(-2) * Second(4) * Ampere(2)
    end
    # https://en.wikipedia.org/wiki/Siemens_(unit)
    def Siemens
        return Kilogram(-1) * Meter(-2) * Second(3) * Ampere(2)
    end
    # https://en.wikipedia.org/wiki/Weber_(unit)
    def Weber
        return Kilogram(1) * Meter(2) * Second(-2) * Ampere(-1)
    end
    # https://en.wikipedia.org/wiki/Tesla_(unit)
    def Tesla
        return Kilogram(1) * Second(-2) * Ampere(-1)
    end
    # https://en.wikipedia.org/wiki/Henry_(unit)
    def Henry
        return Kilogram(1) * Meter(2) * Second(-2) * Ampere(-2)
    end
    # https://en.wikipedia.org/wiki/Katal
    def Katal
        return Second(-1) * Mole(1)
    end
end

# example Planck constant. in J*s = kg * m^2 * s^-2 * s = kg * m^2 * s^-1
PLANK_CONSTANT = SiValue.new(
    PowerValue.new(6.62607015, -34), # 6.62607015 * 10^-34
    DerivedUnits.Joule(1) * DerivedUnits.Second(1)
)

# Electric field constant should bi like this
# 8.85418782 × 10-12 m-3 kg-1 s4 A2
ELECTRIC_FIELD_CONTANT = SiValue.new(
    PowerValue.new(8.85418782, -12), # 8.85418782 × 10-12
    DerivedUnits.Meter(-3) # m^-3
        * DerivedUnits.Kilogram(-1) # kg^-1
        * DerivedUnits.Second(4) # s^4
        * DerivedUnits.Ampere(2) # A^2
)