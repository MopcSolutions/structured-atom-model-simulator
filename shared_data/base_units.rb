require_relative 'si_unit'

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
