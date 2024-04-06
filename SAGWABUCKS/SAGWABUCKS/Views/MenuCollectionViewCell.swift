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
    
    @IBOutlet weak var menuView: UIView!
    
    
    var indexPath: IndexPath = IndexPath()
    
    // cell 표현
    func setCellConfig(_ menuData: Menu) {
        
        if let menuImage = menuData.menuImage {
            menuImageView.image = menuImage
        }
        
        menuNameLabel.text = menuData.menuName
        
        // 원화 표시
        menuPriceLabel.text = String((menuData.menuPrice).formatted(.currency(code: "KRW")))
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.menuView.backgroundColor = #colorLiteral(red: 0.324555248, green: 0.6363828778, blue: 0.4866786003, alpha: 1)
        self.menuView.layer.cornerRadius = 10
        self.menuView.clipsToBounds = true
    }
}
