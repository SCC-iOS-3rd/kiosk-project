//
//  DataManager.swift
//  SAGWABUCKS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 4/2/24.
//

import UIKit

class DataManager {
    static let shared = DataManager()
    private init(){}
    
    var menuList: [Menu] = [
        Menu(category: "Menu", name: "Americano", price: 4300, count: 1),
        Menu(category: "Menu", name: "basil tomato cream cheese bagel", price: 6900, count: 1),
        Menu(category: "Menu", name: "cappuccino", price: 5000, count: 1),
        Menu(category: "Menu", name: "classic milk tea", price: 5500, count: 1)
    ]
    
    lazy var orderLists: [OrderMenu] = [
        OrderMenu(menu: menuList[0], count: 1),
        OrderMenu(menu: menuList[1], count: 2),
        OrderMenu(menu: menuList[2], count: 3),
        OrderMenu(menu: menuList[3], count: 3)
    ]
    
}
