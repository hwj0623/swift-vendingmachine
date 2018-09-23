//
//  InputView.swift
//  VendingMachine
//
//  Created by oingbong on 2018. 9. 23..
//  Copyright © 2018년 JK. All rights reserved.
//

import Foundation

struct InputView {
    
    public static func selectMenuType() throws -> (Int, Int) {
        guard let input = InputView.readInput() else { throw InputError.inputNil }
        let elements = input.components(separatedBy: " ")
        guard elements.count == 2 else { throw InputError.inputError }
        guard let type = Int(elements[0]) else { throw InputError.inputError }
        guard let value = Int(elements[1]) else { throw InputError.inputError }
        return (type , value)
    }
    
    // 입력값 받는 함수
    public static func readInput() -> String? {
        guard let input = InputView.isEmpty(to: readLine()) else { return nil }
        return input
    }
    
    // 입력값 비어 있는지 확인하는 함수
    public static func isEmpty(to value:String?) -> String? {
        guard let inputValue = value else { return nil }
        if inputValue.isEmpty { return nil }
        return inputValue
    }
}
