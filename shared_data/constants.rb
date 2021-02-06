

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