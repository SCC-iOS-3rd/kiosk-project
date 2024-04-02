//
//  DataManager.swift
//  SAGWABUCKS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 4/2/24.
//

import UIKit


class DataManager {
    
    var menuList: [Menu] = {[
            Menu(category: "New", menuImage: #imageLiteral(resourceName: "슈크림라떼"), name: "슈크림라떼", price: 6300, count: 0),
            Menu(category: "New", menuImage: #imageLiteral(resourceName: "라이트핑크자몽피지오"), name: "라이트핑크자몽피지오", price: 6300, count: 0),
            Menu(category: "New", menuImage: #imageLiteral(resourceName: "피스타치오핑크롤"), name: "피스타치오핑크롤", price: 5900, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "아메리카노"), name: "아메리카노", price: 4500, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "아이스 아메리카노"), name: "아이스 아메리카노", price: 4500, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "카푸치노"), name: "카푸치노", price: 5000, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "아이스 카페모카"), name: "아이스 카페모카", price: 5500, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "아이스 돌체라떼"), name: "아이스 돌체라떼", price: 5900, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "말차크림프라푸치노"), name: "말차크림프라푸치노", price: 6300, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "클래식밀크티"), name: "클래식 밀크티", price: 5900, count: 0),
            Menu(category: "Beverage", menuImage: #imageLiteral(resourceName: "아이스 자몽허니블랙티"), name: "허니자몽블랙티", price: 4700, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "바질토마토크림치즈베이글"), name: "바질토마토크림치즈베이글", price: 5300, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "BELT샌드위치"), name: "BELT샌드위치", price: 5900, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "햄루꼴라올리브샌드위치"), name: "햄루꼴라올리브샌드위치", price: 6200, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "마스카포네티라미수케이크"), name: "마스카포네티라미수케이크", price: 5900, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "블루베리치즈케이크"), name: "블루베리치즈케이크", price: 7900, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "마카롱"), name: "블루베리마카롱", price: 2700, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "카우보이쿠키"), name: "카우보이쿠키", price: 2800, count: 0),
            Menu(category: "Food", menuImage: #imageLiteral(resourceName: "밀크푸딩"), name: "밀크푸딩", price: 3300, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "그레이리저브머그"), name: "그레이리저브머그", price: 19000, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "SS리저브블랙머그"), name: "SS리저브블랙머그", price: 21000, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "블라썸시크릿가든글라스콜드컵"), name: "블라썸시크릿가든콜드컵", price: 21000, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "그린리유저블콜드컵"), name: "그린리유저블콜드컵", price: 18000, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "SS화이트아이리스텀블러"), name: "화이트아리리스텀블러", price: 32000, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "SS콩코드하우스텀블러"), name: "콩코드하우스텀블러", price: 34000, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "마이버디패브릭코스터"), name: "마이버디패브릭코스터", price: 24000, count: 0),
            Menu(category: "MD", menuImage: #imageLiteral(resourceName: "제주실리콘스트로"), name: "제주실리콘스트로세트", price: 17000, count: 0),
        ]}()
    

    func extractCategory(category: String) -> [Menu] {
        return menuList.filter{ $0.category == category }
    }
    
}

