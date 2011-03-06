#!/usr/bin/env ruby

class Operation
   
    attr_accessor :a, :b

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

print "Enter 1st number: "
a = gets

print "Enter 2nd number: "
b = gets

operAdd = OperationFactory.new.create_operate("+")
operAdd.a = Integer(a)
operAdd.b = Integer(b) 
operAdd.get_result

operSub = OperationFactory.new.create_operate("-")
operSub.a = Integer(a)
operSub.b = Integer(b) 
operSub.get_result
