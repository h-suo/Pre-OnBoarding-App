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
        
        detailView.loadAllButton.addTarget(self, action: #selector(allLoadButtonTapped), for: .touchUpInside)
    }
    
    @IBAction func allLoadButtonTapped(_ sender: UIButton) {
        detailView.loadImageView.loadImage(link: "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/DF155EB6189BEC718D23EF4FA1A6348E51E9B5F7D84B3A994A9E2E2DC2B0B0FC/scale?width=1200&aspectRatio=1.78&format=jpeg")
    }
}
