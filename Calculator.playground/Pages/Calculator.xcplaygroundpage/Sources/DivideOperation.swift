//
//  DivideOperation.swift
//  
//
//  Created by CHYUN on 10/31/24.
//

public class DivideOperation: AbstractOperation {
    
    public init () {}
    
    public var symbol: String = "/"

    public func operate(_ firstInput: Int, with secondInput: Int) -> Int {
        return firstInput / secondInput
    }
    
}
