import UIKit

class Calculator {
    
    let addOperation = AddOperation()
    let subtractOperation = SubstractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    let modulusOperation = ModulusOperation()

}


let calculator = Calculator()

calculator.addOperation.add(5, to: 6)
calculator.subtractOperation.subtract(9, from: 10)
calculator.multiplyOperation.mutilply(11, by: 12)
calculator.divideOperation.divide(13, by: 14)
calculator.modulusOperation.modulo(13, by: 14)

protocol AbstractOperation {
    func operate(_ firstInput: Int, with secondInput: Int)
}


class AddOperation {
    
    func add(_ firstInput: Int, to secondInput: Int) -> Int {
        return firstInput + secondInput
    }
    
}

class SubstractOperation {
    
    func subtract(_ firstInput: Int, from secondInput: Int) -> Int {
        return firstInput - secondInput
    }
    
}

class MultiplyOperation {
    
    func mutilply(_ firstInput: Int, by secondInput: Int) -> Int {
        return firstInput * secondInput
    }

}

class DivideOperation{
    
    func divide(_ firstInput: Int, by secondInput: Int) -> Int {
        return firstInput / secondInput
    }
    
}

class ModulusOperation {
    
    func modulo(_ firstInput: Int, by secondInput: Int) -> Int {
        return firstInput % secondInput
    }
    
}
