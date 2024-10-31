//
//  MultiplyOperation.swift
//  
//
//  Created by CHYUN on 10/31/24.
//

public class MultiplyOperation: AbstractOperation {
    
    public init () {}
    
    public var symbol: String = "*"
    
    public func operate(_ firstInput: Double, with secondInput: Double) -> Double {
        return firstInput * secondInput
    }

}
