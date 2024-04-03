//
//  ViewController.swift
//  SAGWABUCKS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 4/1/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var orderItemTableView: UITableView!
    @IBOutlet weak var totalCountLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orderItemTableView.dataSource = self
        updateOrderData()
    }
    
    // 선택 된 메뉴 총수량, 총금액 update
    func updateOrderData() {
        //총수량
        totalCountLabel.text = String(DataManager.shared.orderLists.reduce(0, { totalCount, orderItem in
            return totalCount + orderItem.count
        })) + " 개"
        //총금액
        totalPriceLabel.text = String(DataManager.shared.orderLists.reduce(0, { totalPrice, orderItem in
            return totalPrice + (orderItem.count * orderItem.menu.price)
        })) + " 원"
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataManager.shared.orderLists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = orderItemTableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuCell
        
        cell.delegate = self
        cell.indexPath = indexPath
        
        cell.updateData()
        
        return cell
    }
}

// 수량 변경시 update
extension ViewController: MenuCellDelegate {
    func menucell(countChanged indexpath: IndexPath) {
        updateOrderData()
    }
}
