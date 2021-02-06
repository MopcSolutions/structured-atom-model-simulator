require_relative 'base_unit'

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
