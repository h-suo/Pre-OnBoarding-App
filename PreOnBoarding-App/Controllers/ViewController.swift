//
//  ViewController.swift
//  PreOnBoarding-App
//
//  Created by 표현수 on 2023/02/15.
//

import UIKit

class ViewController: UIViewController {
    
    private var detailView = MainView()
    
    override func loadView() {
        
        self.view = detailView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
    }


}

