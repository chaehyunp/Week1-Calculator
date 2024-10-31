import UIKit


class Calculator {
  private var operation: AbstractOperation?
    
  private var firstInput: Int?
  private var secondInput: Int?
  
  func setOperation(to operation: AbstractOperation) {
    self.operation = operation
  }
  
  func setFirst(to number: Int) {
      if firstInput == nil {
          firstInput = number
      }
      
  }
  
  func setSecond(to number: Int) {
      if secondInput == nil {
          secondInput = number
      }
  }
  
  func result() {
      guard let operation, let firstInput, let secondInput else { return }
      let result = operation.operate(firstInput, with: secondInput)
      
      print("\(firstInput) \(operation.symbol) \(secondInput) = \(result)")
      
      self.firstInput = nil
      self.secondInput = nil
      self.operation = nil
  }
}

let calculator = Calculator()

calculator.setFirst(to: 2) // 첫 번째 숫자 입력
calculator.setOperation(to: AddOperation()) // 연산자 입력
calculator.setSecond(to: 10) // 두 번째 숫자 입력
calculator.result() // = 등호 입력

calculator.setFirst(to: 2) // 첫 번째 숫자 입력
calculator.setOperation(to: SubstractOperation()) // 연산자 입력
calculator.setSecond(to: 10) // 두 번째 숫자 입력
calculator.result() // = 등호 입력














