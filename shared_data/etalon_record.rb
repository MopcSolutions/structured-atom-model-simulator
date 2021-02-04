# constants definitions

MASS_CONSTANT 0.00000000000000000000000000167262
ELECTRON_DIAMETER 0.00000000000000565
PROTOM_DIAMETER 0.00000000000000833

# calculations

def ElectronMass
  return 1 * MASS_CONSTANT
end

def ProtonMass
  return ElectronMass * 1836
end

# Electric field constant should bi like this
# 8.85418782 × 10-12 m-3 kg-1 s4 A2




# following is usless for now

# this class defines one record
class EtalonRecord
    # initialize is a constructor method
    def initialize(name, param1, param2)
        # attribute definition and value assignment
        @name = name
        @mass = param1
        @length = param2
    end
end

# this class has an array of data
# and a method for data
class DataGenerator
    # define data in this method
    @arr = Array.new # a list of elements (actually an array, but lets call it a list)
    def define_data
        # create billion billion billion billion elements
        @arr.push(EtalonRecord.new("MassUnit",g,gram))
        @arr.push(EtalonRecord.new("LengthUnit",m,meter))
        # @arr.push(EtalonRecord.new("MassConstant",0.00000000000000000000000000167262))
        # @arr.push(EtalonRecord.new("ElectronMass",1 x "MassConstant"))
        # @arr.push(EtalonRecord.new("ProtonMass",1836 x "ElectronMass"))
        # @arr.push(EtalonRecord.new("ElectronDiameter",000000000000000565))
        # @arr.push(EtalonRecord.new("ProtonDiameter",0000000000000000833))
    end

    def write_json
        # todo
    end
end
