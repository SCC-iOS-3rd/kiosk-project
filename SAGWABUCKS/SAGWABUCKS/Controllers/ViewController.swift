//
//  ViewController.swift
//  SAGWABUCKS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 4/1/24.
//

import UIKit

class ViewController: UIViewController {

    // Collection & Table View에 사용될 데이터 초기화
    var menuDataManager = Menu.newMenu
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var categoryControl: UISegmentedControl!
    
    @IBOutlet weak var menuCollection: UICollectionView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SegmenetedControl
        setConfigureCon()
        
        // CollectionView
        setColletion()
        
        
    }

    // category code 구현
    func setConfigureCon() {
        self.categoryControl.selectedSegmentIndex = 0       // 화면 들어갔을 때 첫번째 세그먼트로 기본 세팅
        
        // logo image
        logoImageView.image = UIImage(named: "SAGWABUCKS logo")
        
        categoryControl.backgroundColor = .clear
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
            menuDataManager = Menu.newMenu
            menuCollection.reloadData()
        case 1:
            // 음료 배열 불러와 컬렉션 뷰에 그리기
            menuDataManager = Menu.beverageMenu
            menuCollection.reloadData()
        case 2:
            // 음식 배열 불러와 컬렉션 뷰에 그리기
            menuDataManager = Menu.foodMenu
            menuCollection.reloadData()
        case 3:
            // 상품 배열 불러와 컬렉션 뷰에 그리기
            menuDataManager = Menu.mdMenu
            menuCollection.reloadData()
        default:
            return
        }
    }
    

}


extension UISegmentedControl{

    func addUnderlineForSelectedSegment(){
        let underlineWidth: CGFloat = self.bounds.size.width / CGFloat(self.numberOfSegments)
        let underlineHeight: CGFloat = 3.0
        let underlineXPosition = CGFloat(selectedSegmentIndex * Int(underlineWidth))
        let underLineYPosition = self.bounds.size.height - 1.0
        let underlineFrame = CGRect(x: underlineXPosition, y: underLineYPosition, width: underlineWidth, height: underlineHeight)
        let underline = UIView(frame: underlineFrame)
        underline.backgroundColor = UIColor(red: 0.29, green: 0.56, blue: 0.43, alpha: 1.00)
        underline.tag = 1
        self.addSubview(underline)
    }

    func changeUnderlinePosition(){
        guard let underline = self.viewWithTag(1) else {return}
        let underlineFinalXPosition = (self.bounds.width / CGFloat(self.numberOfSegments)) * CGFloat(selectedSegmentIndex)
        UIView.animate(withDuration: 0.1, animations: {
            underline.frame.origin.x = underlineFinalXPosition
        })
    }
}

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

        // 메뉴가 정상적으로 추가가 되었을 때 tableview cell을 다시 불러오기

    }
    
    // 셀의 하이라이트 유무
    func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    //    static let flowlayout = UICollectionViewFlowLayout()
    
    
    // 셀의 크기를 반환하는 메서드
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 2 - 15
        let size = CGSize(width: width, height: width)
        
        return size
    }
    
    
    // 행 사이 간격 최소 간격을 반환하는 메서드
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}
