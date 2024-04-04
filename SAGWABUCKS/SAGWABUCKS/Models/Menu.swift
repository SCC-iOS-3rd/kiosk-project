//
//  Menu.swift
//  SAGWABUCKS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 4/2/24.
//

import UIKit

struct Menu {
    
    var menuImage: UIImage?
    var menuName: String
    var menuPrice: Int
    var menuCount: Int
    
    static let newMenu: [Menu] = [
        Menu(menuImage: UIImage(named: "Caramel Frappucino"), menuName: "Caramel Frappucino", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Mocha Frappuccino"), menuName: "Mocha Frappuccino", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Custard_cream_latte-removebg-preview"), menuName: "Custard cream latte", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Light_pink_purple_mongpigio-removebg-preview"), menuName: "Light pink purple mongpigio", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "pistachio_pink_roll-removebg-preview"), menuName: "pistachio pink roll", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "pistachio_cream_cold_brew-removebg-preview"), menuName: "Custard cream latte", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "chicken_mushroom_sandwich-removebg-preview"), menuName: "pistachio pink roll", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "tribute_blend-removebg-preview"), menuName: "Custard cream latte", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "via_spring_season_blend-removebg-preview"), menuName: "pistachio pink roll", menuPrice: 4000, menuCount: 0)
    ]

    static let beverageMenu: [Menu] = [
        Menu(menuImage: UIImage(named: "Americano"), menuName: "Americano", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Iced Americano"), menuName: "Iced Americano", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "cappuccino"), menuName: "cappuccino", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Iced cafe mocha"), menuName: "Iced cafe mocha", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "classic milk tea"), menuName: "classic milk tea", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Iced Dolce Latte"), menuName: "Iced Dolce Latte", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Iced grapefruit honey black tea"), menuName: "Iced grapefruit honey black tea", menuPrice: 4000, menuCount: 0)
    ]

    static let foodMenu: [Menu] = [
        Menu(menuImage: UIImage(named: "basil tomato cream cheese bagel"), menuName: "basil tomato cream cheese bagel", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "BELT Sandwich"), menuName: "BELT Sandwich", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Blueberry cheesecake"), menuName: "Blueberry cheesecake", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Cowboy cookies"), menuName: "Cowboy cookies", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Hamlucola Olive Sandwich"), menuName: "Hamlucola Olive Sandwich", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Macaroons"), menuName: "Macaroons", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Mascaponetiramisu cake"), menuName: "Mascaponetiramisu cake", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Milk pudding"), menuName: "Milk pudding", menuPrice: 4000, menuCount: 0)
    ]

    static let mdMenu: [Menu] = [
        Menu(menuImage: UIImage(named: "Blossom Shikriden Glass Cold Cup"), menuName: "Blossom Shikriden Glass Cold Cup", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Green Leavable Cold Cup"), menuName: "Green Leavable Cold Cup", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Grey Reserve Mug"), menuName: "Grey Reserve Mug", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "Jeju Silicone Stro"), menuName: "Jeju Silicone Stro", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "My Buddy Fabric Coaster"), menuName: "My Buddy Fabric Coaster", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "SS Concord Howstumbler"), menuName: "SS Concord Howstumbler", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "SS Reserve Black Mug"), menuName: "SS Reserve Black Mug", menuPrice: 4000, menuCount: 0),
        Menu(menuImage: UIImage(named: "SS White Eye Lister Tumbler"), menuName: "SS White Eye Lister Tumbler", menuPrice: 4000, menuCount: 0)
    ]
}
