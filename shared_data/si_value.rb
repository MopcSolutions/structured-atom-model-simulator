
class SiValue
    def initialize(powered_value, si_unit)
        # value as PowerValue class: value ^ power
        @value = powered_value
        # unit as SiUnit class
        @unit = si_unit
    end
end