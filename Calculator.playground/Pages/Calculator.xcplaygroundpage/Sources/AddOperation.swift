//
//  AddOperation.swift
//  
//
//  Created by CHYUN on 10/31/24.
//

public class AddOperation: AbstractOperation {
    
    public init () {}
    
    public var symbol: String = "+"
    
    public func operate(_ firstInput: Int, with secondInput: Int) -> Int {
        return firstInput + secondInput
    }
    
}
