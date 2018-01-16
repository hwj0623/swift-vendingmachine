//
//  VendingMachineUnitTest.swift
//  VendingMachineUnitTest
//
//  Created by jack on 2018. 1. 16..
//  Copyright © 2018년 JK. All rights reserved.
//

import XCTest

class VendingMachineUnitTest: XCTestCase {
    
    func test_음료객체생성여부() {
        let form = DateFormatter()
        form.dateFormat = "yyyyMMdd"
        
        let strawberryMilk = Milk(kind: "딸기우유",brand: "서울우유", name: "날마다 딸기우유", volume: 200, price: 1000, date: form.date(from: "20170101")!)
        let bananaMilk = Milk(kind: "바나나우유", brand: "서울우유", name: "날마다 바나나우유", volume: 200, price: 1000, date: form.date(from: "20170105")!)
        let pepsi = SodaPop(kind: "콜라", brand: "팹시", name: "다이어트콜라", volume: 350, price: 700, date: form.date(from: "20160105")!)
        let maxim = Coffee(kind: "커피", brand: "맥심", name: "TOP아메리카노", volume: 400, price: 3000, date: form.date(from: "20170110")!)
        
        XCTAssertNotNil(strawberryMilk)
        XCTAssertNotNil(bananaMilk)
        XCTAssertNotNil(pepsi)
        XCTAssertNotNil(maxim)
    }
    
}
