//
//  ImageLoad.swift
//  PreOnBoarding-App
//
//  Created by 표현수 on 2023/02/17.
//

import UIKit

extension UIImageView {
    func loadImage(link: String, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        URLSession.shared.dataTask(with: request) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else {
                    print("Download image fail : \(url)")
                    return
            }

            DispatchQueue.main.async() { [weak self] in
                print("Download image success \(url)")

                self?.contentMode = mode
                self?.image = image
            }
        }.resume()
    }
}
