# this class a SI unit https://en.wikipedia.org/wiki/International_System_of_Units
class SiUnit
    # defines one value.
    # second, meter, etc. are defined as powers
    # example: Joule is kg⋅m^2⋅s^−2 => kg = 1, m = 2, s = -2, A = 0, K = 0, mon = 0, cd = 0
    def initialize(s, m, kg, A, K, mol, cd)
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


