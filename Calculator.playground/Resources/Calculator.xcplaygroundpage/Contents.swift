import UIKit

class Calculator {
    
    func add(_ firstInput: Int, to secondInput: Int) -> Int {
        return firstInput + secondInput
    }
    
    func subtract(_ firstInput: Int, from secondInput: Int) -> Int {
        return firstInput - secondInput
    }
    
    func mutilply(_ firstInput: Int, by secondInput: Int) -> Int {
        return firstInput * secondInput
    }
    
    func divide(_ firstInput: Int, by secondInput: Int) -> Int {
        return firstInput / secondInput
    }
    
    func modulo(_ firstInput: Int, by secondInput: Int) -> Int {
        return firstInput % secondInput
    }
    
    /** 오류 가능 예외상황
     * 1. 파라미터로 받은 값이 Int 값이 아닐 경우
     * 2. 나눗셈 - 두 값의 결과가 Int 값이 아닐 경우
     * 3. 파라미터로 받은 값이 Int로 표현할 수 있는 자리수가 넘어갈 경우
     **/
}


let calculator = Calculator()

calculator.add(5, to: 6)
calculator.subtract(9, from: 10)
calculator.mutilply(11, by: 12)
calculator.divide(13, by: 14)
calculator.modulo(13, by: 14)
