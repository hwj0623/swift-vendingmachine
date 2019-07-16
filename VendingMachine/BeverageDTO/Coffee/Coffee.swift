//
//  Coffee.swift
//  VendingMachine
//
//  Created by hw on 04/07/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

/// 카페인 함량에 대한 프로퍼티 추가
class Coffee: Drink, Antihypnotical{
    private var coffeine: Double
    private let bean : CoffeeBean
    
    init(
            brand: String,
            quantity: Int,
            price: Int,
            name: String,
            date: Date,
            coffeine: Double = 100.0,
            bean: CoffeeBean = CoffeeBean.arabica,
            calorySet: CaloryElements,
            temp : Double
        ){
        self.coffeine = coffeine
        self.bean = bean
        super.init(brand: brand, quantity: quantity, price: price, name: name, date: date, caloryElements: calorySet, temp: temp)
    }
    
    var coffeeBeanInfo: CoffeeBean {
        get{
            return self.bean
        }
    }
    var coffeineDisplay: Double {
        get{
            return self.coffeine
        }
    }
}
