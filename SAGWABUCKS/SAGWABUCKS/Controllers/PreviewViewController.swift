//
//  PreviewViewController.swift
//  SAGWABUCKS
//
//  Created by 박준영 on 4/3/24.
//

import UIKit

class PreviewViewController: UIViewController {

    
    @IBOutlet weak var forHereButton: UIButton!
    @IBOutlet weak var toGoButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    

    func configureUI() {
        
        forHereButton.backgroundColor = .white
        forHereButton.setTitleColor(UIColor(red: 0.29, green: 0.56, blue: 0.43, alpha: 1.00), for: .normal)
        forHereButton.layer.cornerRadius = 5
        forHereButton.layer.borderWidth = 3
        forHereButton.layer.borderColor = UIColor(red: 0.29, green: 0.56, blue: 0.43, alpha: 1.00).cgColor
        
        toGoButton.backgroundColor = .white
        toGoButton.setTitleColor(UIColor(red: 0.29, green: 0.56, blue: 0.43, alpha: 1.00), for: .normal)
        toGoButton.layer.cornerRadius = 5
        toGoButton.layer.borderWidth = 3
        toGoButton.layer.borderColor = UIColor(red: 0.29, green: 0.56, blue: 0.43, alpha: 1.00).cgColor
    }
    
    
    @IBAction func toMainPage(_ sender: UIButton) {
        print(#function)
        }

}
