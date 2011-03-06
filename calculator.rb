#!/usr/bin/env ruby

class Operation
   
#    attr_reader :a, :b
    attr_accessor :a, :b
#    attr_writer :a, :b

# set
#    def a=(new_a)
#        @a = new_a
#    end
#    
#    def b=(new_b)
#        @b = new_b
#    end

    def get_result
        puts "0"
    end
end

class OperateionAdd < Operation

    def get_result(*)
        result = a + b
        puts "#{a} + #{b} = #{result}"
    end
end

class OperateionSub < Operation

    def get_result(*)
        result = a - b
        puts "#{a} - #{b} = #{result}"
    end
end

class OperationFactory
    
    ops = %w{ + - x / }
    
    def create_operate(operate)
        if operate == "+"
            oper = OperateionAdd.new
        end
        if operate == "-"
            oper = OperateionSub.new
        end
        return oper
    end
end

a = 5
b = 3

operAdd = OperationFactory.new.create_operate("+")
operAdd.a = a
operAdd.b = b
operAdd.get_result

operSub = OperationFactory.new.create_operate("-")
operSub.a = a
operSub.b = b
operSub.get_result
