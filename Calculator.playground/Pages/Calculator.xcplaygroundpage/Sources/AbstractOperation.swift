//
//  AbstractOperation.swift
//  
//
//  Created by CHYUN on 10/31/24.
//

public protocol AbstractOperation {
    
    var symbol: String { get }
    
    func operate(_ firstInput: Int, with secondInput: Int) -> Int
    
}
