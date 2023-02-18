//
//  ViewController.swift
//  PreOnBoarding-Project
//
//  Created by 표현수 on 2023/02/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageA: UIImageView!
    @IBOutlet weak var imageB: UIImageView!
    @IBOutlet weak var imageC: UIImageView!
    @IBOutlet weak var imageD: UIImageView!
    @IBOutlet weak var imageE: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func imageALoadButtonTapped(_ sender: UIButton) {
        imageA.loadImage(link: "https://t2.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/13f9/image/vYfsHkNNLL2APvTd60uA7CBd7hg.jpg")
    }
    
    @IBAction func imageBLoadButtonTapped(_ sender: UIButton) {
        imageB.loadImage(link: "https://cdn.crowdpic.net/detail-thumb/thumb_d_D89EB4D319A77BDB461E5DEB9F793045.jpeg")
    }
    
    @IBAction func imageCLoadButtonTapped(_ sender: UIButton) {
        imageC.loadImage(link: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/German_Village_in_South_Korea_03.jpg/250px-German_Village_in_South_Korea_03.jpg")
    }
    
    @IBAction func imageDLoadButtonTapped(_ sender: UIButton) {
        imageD.loadImage(link: "https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg")
    }
    
    @IBAction func imageELoadButtonTapped(_ sender: UIButton) {
        imageE.loadImage(link: "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/DF155EB6189BEC718D23EF4FA1A6348E51E9B5F7D84B3A994A9E2E2DC2B0B0FC/scale?width=1200&aspectRatio=1.78&format=jpeg")
    }
    
    @IBAction func imageAllLoadButtonTapped(_ sender: UIButton) {
        imageA.loadImage(link: "https://t2.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/13f9/image/vYfsHkNNLL2APvTd60uA7CBd7hg.jpg")
        imageB.loadImage(link: "https://cdn.crowdpic.net/detail-thumb/thumb_d_D89EB4D319A77BDB461E5DEB9F793045.jpeg")
        imageC.loadImage(link: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/German_Village_in_South_Korea_03.jpg/250px-German_Village_in_South_Korea_03.jpg")
        imageD.loadImage(link: "https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg")
        imageE.loadImage(link: "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/DF155EB6189BEC718D23EF4FA1A6348E51E9B5F7D84B3A994A9E2E2DC2B0B0FC/scale?width=1200&aspectRatio=1.78&format=jpeg")
    }
    
    
}

