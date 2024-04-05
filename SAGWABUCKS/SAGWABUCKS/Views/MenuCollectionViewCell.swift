//
//  MenuCollectionViewCell.swift
//  SAGWABUCKS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 4/3/24.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var menuImageView: UIImageView!
    
    @IBOutlet weak var menuNameLabel: UILabel!
    
    @IBOutlet weak var menuPriceLabel: UILabel!
    
    var indexPath: IndexPath = IndexPath()
    
    func menuItem(selectedMenu: String) {
        if selectedMenu == "newMenu" {
            let menuLists = DataManager.shared.newMenu[indexPath.row]
            
            menuImageView.image = UIImage(named: menuLists.menuName)
            menuNameLabel.text = menuLists.menuName
            menuPriceLabel.text = String((menuLists.menuPrice).formatted(.currency(code: "KRW"))) + "원"

        }
        else if selectedMenu == "beverageMenu" {
            let menuLists = DataManager.shared.beverageMenu[indexPath.row]
            
            menuImageView.image = UIImage(named: menuLists.menuName)
            menuNameLabel.text = menuLists.menuName
            menuPriceLabel.text = String(menuLists.menuPrice) + "원"
        }
        else if selectedMenu == "foodMenu" {
            let menuLists = DataManager.shared.foodMenu[indexPath.row]
            
            menuImageView.image = UIImage(named: menuLists.menuName)
            menuNameLabel.text = menuLists.menuName
            menuPriceLabel.text = String(menuLists.menuPrice) + "원"
        }
        else if selectedMenu == "mdMenu" {
            let menuLists = DataManager.shared.mdMenu[indexPath.row]
            
            menuImageView.image = UIImage(named: menuLists.menuName)
            menuNameLabel.text = menuLists.menuName
            menuPriceLabel.text = String(menuLists.menuPrice) + "원"
        }
    }
    
    // cell 표현
    func setCellConfig(_ menuData: Menu) {
        
        if let menuImage = menuData.menuImage {
            menuImageView.image = menuImage
        }
        
        menuNameLabel.text = menuData.menuName
        
        // Todo 숫자사이에 ,넣기
        menuPriceLabel.text = String((menuData.menuPrice).formatted(.currency(code: "KRW")))
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.backgroundColor = #colorLiteral(red: 0.324555248, green: 0.6363828778, blue: 0.4866786003, alpha: 1)
        self.contentView.layer.cornerRadius = 10
        self.contentView.clipsToBounds = true
    }
}
