//
//  MainView.swift
//  PreOnBoarding-App
//
//  Created by 표현수 on 2023/02/15.
//

import UIKit
import SnapKit

class MainView: UIView {
    
    let loadImageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(systemName: "photo")
        iv.tintColor = .tintColor
        
        return iv
    }()
    
    let progressView: UIProgressView = {
        let pv = UIProgressView()
        pv.progress = 0.5
        
        return pv
    }()
    
    let loadImageButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("Load", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        bt.backgroundColor = .tintColor
        bt.layer.cornerRadius = 4
        
        return bt
    }()
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        
        return sv
    }()
    
    let loadAllButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("Load All Images", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        bt.backgroundColor = .tintColor
        bt.layer.cornerRadius = 4
        
        return bt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        self.backgroundColor = .white
    }
    
    func setupView() {
        
        self.stackView.addSubview(loadImageView)
        self.stackView.addSubview(progressView)
        self.stackView.addSubview(loadImageButton)
        self.addSubview(stackView)
        self.addSubview(loadAllButton)
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        stackView.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
            make.top.equalTo(safeAreaLayoutGuide)
            make.height.equalTo(100)
        }
        loadImageView.snp.makeConstraints { make in
            make.centerY.equalTo(stackView)
            make.leading.equalTo(stackView.snp.leading).offset(20)
            make.width.equalTo(120)
            make.height.equalTo(90)
        }
        progressView.snp.makeConstraints { make in
            make.centerY.equalTo(stackView)
            make.leading.equalTo(loadImageView.snp.trailing).offset(4)
        }
        loadImageButton.snp.makeConstraints { make in
            make.centerY.equalTo(stackView)
            make.leading.equalTo(progressView.snp.trailing)
            make.width.equalTo(80)
            make.trailing.equalTo(stackView.snp.trailing).offset(-20)
        }
        loadAllButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.top.equalTo(stackView.snp.bottom).offset(20)
        }
    }
}
