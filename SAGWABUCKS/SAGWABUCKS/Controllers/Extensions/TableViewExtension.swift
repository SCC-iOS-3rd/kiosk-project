//
//  TableViewExtension.swift
//  SAGWABUCKS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 4/5/24.
//

import UIKit

extension ViewController: UITableViewDelegate, UITableViewDataSource, OrderTableViewCellDelegate {
    func setTableView() {
        orderListTable.delegate = self
        orderListTable.dataSource = self

    }
    
    // Header
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "주문 내역"
    }
    
    // 선택한 메뉴 삭제시
    func selectMenuTableViewCell(didRemove indexPath: IndexPath) {
        print(indexPath.row)
        DataManager.shared.orderLists.remove(at: indexPath.row)
        orderListTable.reloadData()
        updateOrderData()
    }
    
    // 선택한 메뉴 수량 변경시
    func selectMenuTableViewCell(countChanged indexPath: IndexPath) {
        updateOrderData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataManager.shared.orderLists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = orderListTable.dequeueReusableCell(withIdentifier: "OrderTableViewCell", for: indexPath) as! OrderTableViewCell
        
        //let seletedMenu = DataManager.shared.orderLists[indexPath.row]
        //cell.orderItem = seletedMenu
        
        cell.delegate = self
        cell.indexPath = indexPath
        
        cell.updateData()
        
        return cell
    }
    
    
}
