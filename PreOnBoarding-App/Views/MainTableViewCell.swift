//
//  MainTableViewCell.swift
//  PreOnBoarding-App
//
//  Created by 표현수 on 2023/02/15.


import UIKit
import SnapKit

class MainTableViewCell: UITableViewCell {

    let loadImageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.layer.cornerRadius = 16
        iv.image = UIImage(systemName: "photo")
        iv.tintColor = .tintColor
        
        return iv
    }()
    
    let progressView: UIProgressView = {
        let pv = UIProgressView()
        pv.progress = 0.5
        
        return pv
    }()
    
    let button: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("Load", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .tintColor
        bt.layer.cornerRadius = 4
        
        return bt
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    func setupView() {
        
        self.addSubview(loadImageView)
        self.addSubview(progressView)
        self.contentView.addSubview(button)
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        loadImageView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(20)
            make.width.equalTo(120)
            make.height.equalTo(90)
        }
        progressView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(loadImageView.snp.trailing).offset(20)
            
        }
        button.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(progressView.snp.trailing)
            make.width.equalTo(60)
            make.trailing.equalToSuperview().offset(-20)
        }
    }
}
