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
        
        detailView.loadAImageButton.addTarget(self, action: #selector(loadAButtonTapped), for: .touchUpInside)
        detailView.loadBImageButton.addTarget(self, action: #selector(loadBButtonTapped), for: .touchUpInside)
        detailView.loadCImageButton.addTarget(self, action: #selector(loadCButtonTapped), for: .touchUpInside)
        detailView.loadDImageButton.addTarget(self, action: #selector(loadDButtonTapped), for: .touchUpInside)
        detailView.loadEImageButton.addTarget(self, action: #selector(loadEButtonTapped), for: .touchUpInside)
        
        detailView.loadAllButton.addTarget(self, action: #selector(loadAllButtonTapped), for: .touchUpInside)
    }
    
    @IBAction func loadAButtonTapped(_ sender: UIButton) {
        detailView.loadAImageView.loadImage(link: "https://t2.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/13f9/image/vYfsHkNNLL2APvTd60uA7CBd7hg.jpg")
    }
    
    @IBAction func loadBButtonTapped(_ sender: UIButton) {
        detailView.loadBImageView.loadImage(link: "https://cdn.crowdpic.net/detail-thumb/thumb_d_D89EB4D319A77BDB461E5DEB9F793045.jpeg")
    }
    
    @IBAction func loadCButtonTapped(_ sender: UIButton) {
        detailView.loadCImageView.loadImage(link: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/German_Village_in_South_Korea_03.jpg/250px-German_Village_in_South_Korea_03.jpg")
    }
    
    @IBAction func loadDButtonTapped(_ sender: UIButton) {
        detailView.loadDImageView.loadImage(link: "https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg")
    }
    
    @IBAction func loadEButtonTapped(_ sender: UIButton) {
        detailView.loadEImageView.loadImage(link: "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/DF155EB6189BEC718D23EF4FA1A6348E51E9B5F7D84B3A994A9E2E2DC2B0B0FC/scale?width=1200&aspectRatio=1.78&format=jpeg")
    }
    
    @IBAction func loadAllButtonTapped(_ sender: UIButton) {
        detailView.loadAImageView.loadImage(link: "https://t2.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/13f9/image/vYfsHkNNLL2APvTd60uA7CBd7hg.jpg")
        detailView.loadBImageView.loadImage(link: "https://cdn.crowdpic.net/detail-thumb/thumb_d_D89EB4D319A77BDB461E5DEB9F793045.jpeg")
        detailView.loadCImageView.loadImage(link: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/German_Village_in_South_Korea_03.jpg/250px-German_Village_in_South_Korea_03.jpg")
        detailView.loadDImageView.loadImage(link: "https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg")
        detailView.loadEImageView.loadImage(link: "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/DF155EB6189BEC718D23EF4FA1A6348E51E9B5F7D84B3A994A9E2E2DC2B0B0FC/scale?width=1200&aspectRatio=1.78&format=jpeg")
    }
}
