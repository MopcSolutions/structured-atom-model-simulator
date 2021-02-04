# this class defines one record
class EtalonRecord
    # initialize is a constructor method
    def initialize(name, param1, param2)
        # attribute definition and value assignment
        @name = name
        @param1 = param1
        @param2 = param2
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
        @arr.push(EtalonRecord.new("MassConstant",0.00000000000000000000000000167262))
        @arr.push(EtalonRecord.new("ElectronMass",1 x "MassConstant"))
        @arr.push(EtalonRecord.new("ProtonMass",1836 x "ElectronMass"))
        @arr.push(EtalonRecord.new("ElectronDiameter",0.00000000000000565))
        @arr.push(EtalonRecord.new("ProtonDiameter",0.00000000000000833))
    end

    def write_json
        # todo
    end
end
