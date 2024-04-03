//
//  LoadingViewController.swift
//  SAGWABUCKS
//
//  Created by 박준영 on 4/3/24.
//

import UIKit

class LoadingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        move()
    }
    
    
    func move() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            self.performSegue(withIdentifier: "toPreviewVC", sender: self)
        }
    }
    
    
}
