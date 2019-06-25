//
//  VendingMachineManagement.swift
//  VendingMachine
//
//  Created by joon-ho kil on 6/20/19.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

protocol VendingMachineManagementable {
    mutating func supply(_ index: Int, amount: Int)
    func getAbleDrinks () -> [Drink]
    func getStockList () -> Dictionary<Drink, Int>
    func getExpiredDrinkList () -> [Drink]
    func getHotDrinkList () -> [Drink]
    func getMenu () -> Dictionary<Int, String>
}
