//
//  ViewController.swift
//  SAGWABUCKS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 4/1/24.
//

import UIKit

class ViewController: UIViewController {

    // Collection & Table View에 사용될 데이터 초기화
    var menuDataManager = DataManager.shared.newMenu
    
    @IBOutlet weak var categoryControl: UISegmentedControl!
    
    @IBOutlet weak var menuCollection: UICollectionView!
    
    @IBOutlet weak var orderListTable: UITableView!
    
    @IBOutlet weak var totalCountLabel: UILabel!
    
    @IBOutlet weak var totalPriceLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SegmenetedControl
        setConfigureCon()
        
        // CollectionView
        setColletion()
        
        // TableView
        setTableView()
        
    }

    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // category code 구현
    func setConfigureCon() {
        self.categoryControl.selectedSegmentIndex = 0       // 화면 들어갔을 때 첫번째 세그먼트로 기본 세팅
        
        // categoryControl.backgroundColor = .white // backgroundColor로 대체
        categoryControl.setDividerImage(UIImage(), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
        
        categoryControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.gray], for: .normal)  // 선택되지 않은 카테고리 회색
        categoryControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black,               // 선택한 카테고리 블랙, 두껍게
                                     .font: UIFont.systemFont(ofSize: 13, weight: .semibold)], for: .selected)
        
        categoryControl.addUnderlineForSelectedSegment()      // 카테고리바 언더라인 그리기
    }
    
    // 셀 선택 시 해당 collectionView로 변환
    @IBAction func categorySelected(_ sender: UISegmentedControl) {
        categoryControl.changeUnderlinePosition()
        
        switch sender.selectedSegmentIndex {
        case 0:
            // 신메뉴 배열 불러와 컬렉션 뷰에 그리기
            menuDataManager = DataManager.shared.newMenu
            menuCollection.reloadData()
            return
        case 1:
            // 음료 배열 불러와 컬렉션 뷰에 그리기
            menuDataManager = DataManager.shared.beverageMenu
            menuCollection.reloadData()
            return
        case 2:
            // 음식 배열 불러와 컬렉션 뷰에 그리기
            menuDataManager = DataManager.shared.foodMenu
            menuCollection.reloadData()
            return
        case 3:
            // 상품 배열 불러와 컬렉션 뷰에 그리기
            menuDataManager = DataManager.shared.mdMenu
            menuCollection.reloadData()
            return
        default:
            menuDataManager = DataManager.shared.newMenu
            menuCollection.reloadData()
            return
        }
    }
    
    // 주문내역
    func updateOrderData() {
        //총수량
        totalCountLabel.text = String(DataManager.shared.orderLists.reduce(0, { totalCount, orderItem in
            return totalCount + orderItem.menuCount
        })) + " 개"
        //총금액
        totalPriceLabel.text = String(DataManager.shared.orderLists.reduce(0, { totalPrice, orderItem in
            return totalPrice + (orderItem.menuCount * orderItem.product.menuPrice)
        }).formatted(.currency(code: "KRW"))) + " 원"
    }
    
    // 주문내역 전체 취소(알림)
    func cancelAll() {
        let cancelAlert = UIAlertController(title: "전체 취소 하시겠습니까?", message: "선택한 메뉴가 전체 취소 됩니다.", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "돌아가기", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "전체취소", style: .default) { action in
            DataManager.shared.orderLists.removeAll()
            self.updateOrderData()
            self.orderListTable.reloadData()
        }
        cancelAlert.addAction(cancelAction)
        cancelAlert.addAction(okAction)
        self.present(cancelAlert, animated: true)
    }
    
    // 주문내역 결제 기능
    func payAll() {
        let payAllAlert = UIAlertController(title: "주문 하시겠습니까?", message: "\(totalPriceLabel.text!)이 결제 됩니다.", preferredStyle: .alert)
        let payCancelAction = UIAlertAction(title: "돌아가기", style: .cancel, handler: nil)
        let payAllAction = UIAlertAction(title: "주문하기", style: .default) { payAction in
            // 주문 완료시 Alert
            let payCompleteAlert = UIAlertController(title: "주문이 완료 되었습니다", message: "맛있게 만들어 드릴게요!", preferredStyle: .alert)
            let payCompleteAction = UIAlertAction(title: "확인", style: .default)
            
            payCompleteAlert.addAction(payCompleteAction)
            self.present(payCompleteAlert, animated: true)
        }
        // 결제 버튼 눌렀을시 메뉴가 없을 때 Alert
        let noneMenuAlert = UIAlertController(title: "메뉴를 선택해 주세요", message: "", preferredStyle: .alert)
        let backAction = UIAlertAction(title: "닫기", style: .cancel)
        
        if totalCountLabel.text == "0 개" {
            noneMenuAlert.addAction(backAction)
            self.present(noneMenuAlert, animated: true)
        }
        else {
            payAllAlert.addAction(payCancelAction)
            payAllAlert.addAction(payAllAction)
            self.present(payAllAlert, animated: true)
        }
    }
    
    // 주문내역 전체 취소
    @IBAction func cancelAllButton(_ sender: UIButton) { cancelAll() }
    
    // 주문내역 결제
    @IBAction func payAllButton(_ sender: UIButton) { payAll() }
    
}





