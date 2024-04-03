//
//  DataManager.swift
//  SAGWABUCKS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 4/2/24.
//

import UIKit


class DataManager {
    
    var menuList: [Menu] = {[
            Menu(category: "New", menuImage: #imageLiteral(resourceName: "Custard cream latte"), name: "슈크림라떼", price: 6300, count: 0),
            Menu(category: "New", menuImage: #imageLiteral(resourceName: "Light pink purple mongpigio"), name: "라이트핑크자몽피지오", price: 6300, count: 0),
            Menu(category: "New", menuImage: #imageLiteral(resourceName: "pistachio pink roll"), name: "피스타치오핑크롤", price: 5900, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "아메리카노"), name: "아메리카노", price: 4500, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "Iced Americano"), name: "아이스 아메리카노", price: 4500, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "cappuccino"), name: "카푸치노", price: 5000, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "Iced cafe mocha"), name: "아이스 카페모카", price: 5500, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "Iced Dolce Latte"), name: "아이스 돌체라떼", price: 5900, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "Matcha cream frappuccino"), name: "말차크림프라푸치노", price: 6300, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "classic milk tea"), name: "클래식 밀크티", price: 5900, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "Iced grapefruit honey black tea"), name: "허니자몽블랙티", price: 4700, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "basil tomato cream cheese bagel"), name: "바질토마토크림치즈베이글", price: 5300, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "BELT Sandwich"), name: "BELT샌드위치", price: 5900, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "Hamlucola Olive Sandwich"), name: "햄루꼴라올리브샌드위치", price: 6200, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "Mascaponetiramisu cake"), name: "마스카포네티라미수케이크", price: 5900, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "Blueberry cheesecake"), name: "블루베리치즈케이크", price: 7900, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "Macaroons"), name: "블루베리마카롱", price: 2700, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "Cowboy cookies"), name: "카우보이쿠키", price: 2800, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "Milk pudding"), name: "밀크푸딩", price: 3300, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "Grey Reserve Mug"), name: "그레이리저브머그", price: 19000, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "SS Reserve Black Mug"), name: "SS리저브블랙머그", price: 21000, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "Blossom Shikriden Glass Cold Cup"), name: "블라썸시크릿가든콜드컵", price: 21000, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "Green Leavable Cold Cup"), name: "그린리유저블콜드컵", price: 18000, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "SS White Eye Lister Tumbler"), name: "화이트아리리스텀블러", price: 32000, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "SS Concord Howstumbler"), name: "콩코드하우스텀블러", price: 34000, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "My Buddy Fabric Coaster"), name: "마이버디패브릭코스터", price: 24000, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "Jeju Silicone Stro"), name: "제주실리콘스트로세트", price: 17000, count: 0),
        ]}()
    

    func extractCategory(category: String) -> [Menu] {
        return menuList.filter{ $0.category == category }
    }
    
}

