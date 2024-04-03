//
//  MenuCell.swift
//  SAGWABUCKS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 4/2/24.
//

import UIKit

protocol MenuCellDelegate: AnyObject {
    func menucell(countChanged indexpath: IndexPath)
}


class MenuCell: UITableViewCell {
    
    var indexPath: IndexPath = IndexPath()
    weak var delegate: (any MenuCellDelegate)?
    
    @IBOutlet weak var orderMenuImage: UIImageView!
    @IBOutlet weak var orderMenuTitleLabel: UILabel!
    @IBOutlet weak var orderMenuTotalPriceLabel: UILabel!
    @IBOutlet weak var menuCountLabel: UILabel!
    
    // 상품수량 조절
    // 수량 추가
    @IBAction func plusButton(_ sender: Any) {
        DataManager.shared.orderLists[indexPath.row].count += 1
        updateData()
        delegate?.menucell(countChanged: indexPath)
    }
    // 수량 감소
    @IBAction func minusButton(_ sender: Any) {
        if DataManager.shared.orderLists[indexPath.row].count == 1 {
            print("한개이상 선택하세요")
        }
        else {
            DataManager.shared.orderLists[indexPath.row].count -= 1
            updateData()
            delegate?.menucell(countChanged: indexPath)
        }
    }
    
    //cell update
    func updateData() {
        let orderItem = DataManager.shared.orderLists[indexPath.row]
        
        orderMenuImage.image = UIImage(named: orderItem.menu.name)
        orderMenuTitleLabel.text = orderItem.menu.name
        menuCountLabel.text = String(orderItem.count)
        orderMenuTotalPriceLabel.text = String(orderItem.count * orderItem.menu.price) + "원"
        
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //이미지 원형으로 만들기
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        
        // corner radius
        self.orderMenuImage.layer.cornerRadius = self.orderMenuImage.frame.width / 2
        self.orderMenuImage.clipsToBounds = true
    }

}
