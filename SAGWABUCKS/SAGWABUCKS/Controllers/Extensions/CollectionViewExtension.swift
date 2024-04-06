//
//  CollectionViewExtension.swift
//  SAGWABUCKS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 4/5/24.
//

import UIKit

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func setColletion() {
        menuCollection.delegate = self
        menuCollection.dataSource = self
        menuCollection.contentInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuDataManager.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: indexPath) as? MenuCollectionViewCell else { return UICollectionViewCell() }
        
        cell.setCellConfig(menuDataManager[indexPath.row])
        
//        if indexPath.row % 2 == 0 {
//            cell.contentView.backgroundColor = .red
//        }
            
        return cell
    }
    
    // collectionView 선택시 tableView(장바구니)에 추가
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // Todo : tableView의 데이터 매니저에 메뉴의 정보를 받아 추가하는 매서드 활용
        // 중복된 메뉴 선택시 menuCount만 +1 하는 로직이 필요해 보임
        let orderItem = OrderItem(product: menuDataManager[indexPath.row], menuCount: 1)
        
        // orderLists에 이미 담겨있다면 menuCount만 +1하고, 없다면 새로 추가 flag값 함 찾아보기
        var isexist = false // 이미 있다면 isexist를 true로 바꿔서 해보기
        
        for i in 0..<DataManager.shared.orderLists.count {
            if DataManager.shared.orderLists[i].product.menuName == orderItem.product.menuName {
                DataManager.shared.orderLists[i].menuCount += 1
                isexist = true
            }
        }
        
        if isexist == false {
            DataManager.shared.orderLists.append(orderItem)
        }
        updateOrderData()
        
        // 메뉴가 정상적으로 추가가 되었을 때 tableview cell을 다시 불러오기
        self.orderListTable.reloadData()

    }
    
    // 셀의 하이라이트 유무
    func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    // 셀의 크기를 반환하는 메서드
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 2 - 15
        let size = CGSize(width: width, height: width)
        
        return size
    }
    
    // 행 사이 간격 최소 간격을 반환하는 메서드
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}
