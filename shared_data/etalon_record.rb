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
        @arr.push(EtalonRecord.new("i am hydrogen",123, 3.14159265358979323846))
        @arr.push(EtalonRecord.new("i am silicon",123, 3.14159265358979323846))
        @arr.push(EtalonRecord.new("i am ununoctium",123, 3.14159265358979323846))
    end

    def write_json
        # todo
    end
end
