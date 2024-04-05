//
//  OrderTableViewCell.swift
//  SAGWABUCKS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 4/5/24.
//

import UIKit

protocol OrderTableViewCellDelegate: AnyObject {
    func selectMenuTableViewCell(didRemove indexPath: IndexPath)
    func selectMenuTableViewCell(countChanged indexPath: IndexPath)
}

class OrderTableViewCell: UITableViewCell {

    @IBOutlet weak var orderImage: UIImageView!
    
    @IBOutlet weak var orderTitleLabel: UILabel!
    
    @IBOutlet weak var orderCountLabel: UILabel!
    
    @IBOutlet weak var TotalPriceLabel: UILabel!
    
    weak var delegate: (any OrderTableViewCellDelegate)?
    
    var indexPath: IndexPath = IndexPath()
    
    // 상품 '-'
    @IBAction func minusButton(_ sender: UIButton) {
        if DataManager.shared.orderLists[indexPath.row].menuCount == 1 {
            print("한 개 이상 선택하세요")
        }
        else {
            DataManager.shared.orderLists[indexPath.row].menuCount -= 1
            updateData()
            delegate?.selectMenuTableViewCell(countChanged: indexPath)
        }
    }
    
    // 상품 '+'
    @IBAction func plusButton(_ sender: UIButton) {
        DataManager.shared.orderLists[indexPath.row].menuCount += 1
        updateData()
        delegate?.selectMenuTableViewCell(countChanged: indexPath)
    }
    
    // 상품 삭제
    @IBAction func trashButton(_ sender: UIButton) {
        delegate?.selectMenuTableViewCell(didRemove: indexPath)
    }
    
    //cell update
    func updateData() {
        let orderItem = DataManager.shared.orderLists[indexPath.row]
        
        orderImage.image = UIImage(named: orderItem.product.menuName)
        orderTitleLabel.text = orderItem.product.menuName
        orderCountLabel.text = String(orderItem.menuCount)
        TotalPriceLabel.text = String((orderItem.product.menuPrice * orderItem.menuCount).formatted(.currency(code: "KRW")))
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    // 이미지 원형
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        
        // corner radius
        self.orderImage.layer.cornerRadius = self.orderImage.frame.width / 2
        self.orderImage.clipsToBounds = true
    }
}
