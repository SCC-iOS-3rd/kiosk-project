//
//  ViewController.swift
//  SAGWABUCKS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 4/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var categoryControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCon()
    }
    
    
    func configureCon() {
        self.categoryControl.selectedSegmentIndex = 0       // 화면 들어갔을 때 첫번째 세그먼트로 기본 세팅
        
        categoryControl.setBackgroundImage(UIImage(), for: .normal, barMetrics: .default)
        categoryControl.setDividerImage(UIImage(), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
        
        categoryControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.gray], for: .normal)  // 선택되지 않은 카테고리 회색
        categoryControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black,               // 선택한 카테고리 블랙, 두껍게
                                                .font: UIFont.systemFont(ofSize: 13, weight: .semibold)], for: .selected)
        
        categoryControl.addUnderlineForSelectedSegment()      // 카테고리바 언더라인 생성
    }
    
    
    @IBAction func categorySelected(_ sender: UISegmentedControl) {
        categoryControl.changeUnderlinePosition()
        
        switch sender.selectedSegmentIndex {
        case 0:
            // 신메뉴 배열 불러와 컬렉션 뷰에 그리기
            
            return
        case 1:
            // 음료 배열 불러와 컬렉션 뷰에 그리기
            return
        case 2:
            // 음식 배열 불러와 컬렉션 뷰에 그리기
            return
        case 3:
            // 상품 배열 불러와 컬렉션 뷰에 그리기
            return
        default:
            return
        }
    }
}


/// 카테고리바 언더라인 관련 함수들
extension UISegmentedControl{
    
    func addUnderlineForSelectedSegment() {
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
    
    func changeUnderlinePosition() {
        guard let underline = self.viewWithTag(1) else {return}
        let underlineFinalXPosition = (self.bounds.width / CGFloat(self.numberOfSegments)) * CGFloat(selectedSegmentIndex)
        UIView.animate(withDuration: 0.1, animations: {
            underline.frame.origin.x = underlineFinalXPosition
        })
    }
}
