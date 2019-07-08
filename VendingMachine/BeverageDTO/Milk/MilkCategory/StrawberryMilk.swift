//
//  StrawberryMilk.swift
//  VendingMachine
//
//  Created by hw on 04/07/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

/// 딸기 함량 추가
class StrawberryMilk: Milk {
    private let proportion: Double
    private (set) var fruitOrigin: String
    
    init(brand: String, quantity: Int, price: Int, name: String, date: Date, isLowFat: Bool = false,  fruitPercent: Double = 0.1, fruitOrigin: String = "국산", milkFarmCode: FarmCode? = nil, calorySet: CaloryElements, temperature: Double ) {
        self.proportion = fruitPercent
        self.fruitOrigin = fruitOrigin
        super.init(brand: brand, quantity: quantity, price: price, name: name, date: date, isLowFat: isLowFat, milkFarmCode: milkFarmCode, calorySet: calorySet, temp: temperature)
    }
}
extension StrawberryMilk: Fruitable {
    func displayFruitProportion() -> Double {
        return self.proportion
    }
}
