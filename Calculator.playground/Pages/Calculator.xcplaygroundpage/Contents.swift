import UIKit

class Calculator {
    
    let addOperation = AddOperation()
    let subtractOperation = SubstractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    let modulusOperation = ModulusOperation()

}


let calculator = Calculator()

calculator.addOperation.operate(5, with: 6)
calculator.subtractOperation.operate(9, with: 10)
calculator.multiplyOperation.operate(11, with: 12)
calculator.divideOperation.operate(13, with: 14)
calculator.modulusOperation.operate(13, with: 14)


protocol AbstractOperation {
    func operate(_ firstInput: Int, with secondInput: Int) -> Int
}


class AddOperation: AbstractOperation {
    
    func operate(_ firstInput: Int, with secondInput: Int) -> Int {
        return firstInput + secondInput
    }
    
}

class SubstractOperation: AbstractOperation {
    
    func operate(_ firstInput: Int, with secondInput: Int) -> Int {
        return firstInput - secondInput
    }
    
}

class MultiplyOperation: AbstractOperation {
    
    func operate(_ firstInput: Int, with secondInput: Int) -> Int {
        return firstInput * secondInput
    }

}

class DivideOperation: AbstractOperation {
    
    func operate(_ firstInput: Int, with secondInput: Int) -> Int {
        return firstInput / secondInput
    }
    
}

class ModulusOperation: AbstractOperation {
    
    func operate(_ firstInput: Int, with secondInput: Int) -> Int {
        return firstInput % secondInput
    }
    
}
