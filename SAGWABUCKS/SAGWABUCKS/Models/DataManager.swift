//
//  DataManager.swift
//  SAGWABUCKS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 4/2/24.
//

import UIKit

class DataManager {
    // singleton pattern
    static let shared = DataManager()
    init(){}
    
    let newMenu: [Menu] = [
        Menu(menuImage: UIImage(named: "Caramel Frappucino"), menuName: "Caramel Frappucino", menuPrice: 5900),
        Menu(menuImage: UIImage(named: "Mocha Frappuccino"), menuName: "Mocha Frappuccino", menuPrice: 6000),
        Menu(menuImage: UIImage(named: "Custard_cream_latte-removebg-preview"), menuName: "Custard cream latte", menuPrice: 6300),
        Menu(menuImage: UIImage(named: "Light_pink_purple_mongpigio-removebg-preview"), menuName: "Light pink purple mongpigio", menuPrice: 6300),
        Menu(menuImage: UIImage(named: "pistachio_pink_roll-removebg-preview"), menuName: "pistachio pink roll", menuPrice: 5900),
        Menu(menuImage: UIImage(named: "tribute_blend-removebg-preview"), menuName: "Tribute blend", menuPrice: 7000),
        Menu(menuImage: UIImage(named: "chicken_mushroom_sandwich-removebg-preview"), menuName: "Chicken mushroom sandwich", menuPrice: 6900),
        Menu(menuImage: UIImage(named: "pistachio_cream_cold_brew-removebg-preview"), menuName: "Pistachio cream coldbrew", menuPrice: 6300),
        Menu(menuImage: UIImage(named: "via_spring_season_blend-removebg-preview"), menuName: "Via spring season blend", menuPrice: 13500)
    ]

    let beverageMenu: [Menu] = [
        Menu(menuImage: UIImage(named: "Americano-removebg-preview"), menuName: "Americano", menuPrice: 4500),
        Menu(menuImage: UIImage(named: "Iced_Americano-removebg-preview"), menuName: "Iced Americano", menuPrice: 4500),
        Menu(menuImage: UIImage(named: "cappuccino-removebg-preview"), menuName: "cappuccino", menuPrice: 5000),
        Menu(menuImage: UIImage(named: "Iced_cafe_mocha-removebg-preview"), menuName: "Iced cafe mocha", menuPrice: 5500),
        Menu(menuImage: UIImage(named: "classic_milk_tea-removebg-preview"), menuName: "classic milk tea", menuPrice: 5900),
        Menu(menuImage: UIImage(named: "Iced_Dolce_Latte-removebg-preview"), menuName: "Iced Dolce Latte", menuPrice: 5900),
        Menu(menuImage: UIImage(named: "Iced_grapefruit _honey _black_tea-removebg-preview"), menuName: "Iced grapefruit honey black tea", menuPrice: 5700)
    ]

    let foodMenu: [Menu] = [
        Menu(menuImage: UIImage(named: "BELT_Sandwich-removebg-preview"), menuName: "BELT Sandwich", menuPrice: 5900),
        Menu(menuImage: UIImage(named: "Blueberry_cheesecake-removebg-preview"), menuName: "Blueberry cheesecake", menuPrice: 7900),
        Menu(menuImage: UIImage(named: "Cowboy_cookies-removebg-preview"), menuName: "Cowboy cookies", menuPrice: 2800),
        Menu(menuImage: UIImage(named: "Hamlucola_Olive_Sandwich-removebg-preview"), menuName: "Hamlucola Olive Sandwich", menuPrice: 6200),
        Menu(menuImage: UIImage(named: "Macaroons-removebg-preview"), menuName: "Macaroons", menuPrice: 2700),
        Menu(menuImage: UIImage(named: "Mascaponetiramisu_cake-removebg-preview"), menuName: "Mascaponetiramisu cake", menuPrice: 5900),
        Menu(menuImage: UIImage(named: "Milk_pudding-removebg-preview"), menuName: "Milk pudding", menuPrice: 3300),
        Menu(menuImage: UIImage(named: "basil_tomato_cream_cheese_bagel-removebg-preview"), menuName: "basil tomato cream cheese bagel", menuPrice: 5300)
    ]

    let mdMenu: [Menu] = [
        Menu(menuImage: UIImage(named: "Blossom_Shikriden_Glass_Cold_Cup-removebg-preview"), menuName: "Blossom Shikriden Glass Cold Cup", menuPrice: 27000),
        Menu(menuImage: UIImage(named: "Green_Leavable_Cold_Cup-removebg-preview"), menuName: "Green Leavable Cold Cup", menuPrice: 21000),
        Menu(menuImage: UIImage(named: "Grey_Reserve_Mug-removebg-preview"), menuName: "Grey Reserve Mug", menuPrice: 19000),
        Menu(menuImage: UIImage(named: "Jeju_Silicone_Stro-removebg-preview"), menuName: "Jeju Silicone Stro", menuPrice: 17000),
        Menu(menuImage: UIImage(named: "My_Buddy_Fabric_Coaster-removebg-preview"), menuName: "My Buddy Fabric Coaster", menuPrice: 18000),
        Menu(menuImage: UIImage(named: "SS_Concord_Howstumbler-removebg-preview"), menuName: "SS Concord Howstumbler", menuPrice: 34000),
        Menu(menuImage: UIImage(named: "SS_Reserve_Black_Mug-removebg-preview"), menuName: "SS Reserve Black Mug", menuPrice: 20000),
        Menu(menuImage: UIImage(named: "SS_White_Eye_Lister_Tumbler-removebg-preview"), menuName: "SS White Eye Lister Tumbler", menuPrice: 35000)
    ]
    
    lazy var orderLists: [OrderItem] = []
}

