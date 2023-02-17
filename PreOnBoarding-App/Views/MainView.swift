//
//  MainView.swift
//  PreOnBoarding-App
//
//  Created by 표현수 on 2023/02/15.
//

import UIKit
import SnapKit

class MainView: UIView {
    // MARK: A
    let stackViewA: UIStackView = {
        let sv = UIStackView()
        
        return sv
    }()
    
    let loadAImageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(systemName: "photo")
        iv.tintColor = .tintColor
        
        return iv
    }()
    
    let progressViewA: UIProgressView = {
        let pv = UIProgressView()
        pv.progress = 0.5
        
        return pv
    }()
    
    let loadAImageButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("Load", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        bt.backgroundColor = .tintColor
        bt.layer.cornerRadius = 4
        
        return bt
    }()
    // MARK: B
    let stackViewB: UIStackView = {
        let sv = UIStackView()
        
        return sv
    }()
    
    let loadBImageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(systemName: "photo")
        iv.tintColor = .tintColor
        
        return iv
    }()
    
    let progressViewB: UIProgressView = {
        let pv = UIProgressView()
        pv.progress = 0.5
        
        return pv
    }()
    
    let loadBImageButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("Load", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        bt.backgroundColor = .tintColor
        bt.layer.cornerRadius = 4
        
        return bt
    }()
    // MARK: C
    let stackViewC: UIStackView = {
        let sv = UIStackView()
        
        return sv
    }()
    
    let loadCImageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(systemName: "photo")
        iv.tintColor = .tintColor
        
        return iv
    }()
    
    let progressViewC: UIProgressView = {
        let pv = UIProgressView()
        pv.progress = 0.5
        
        return pv
    }()
    
    let loadCImageButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("Load", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        bt.backgroundColor = .tintColor
        bt.layer.cornerRadius = 4
        
        return bt
    }()
    // MARK: D
    let stackViewD: UIStackView = {
        let sv = UIStackView()
        
        return sv
    }()
    
    let loadDImageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(systemName: "photo")
        iv.tintColor = .tintColor
        
        return iv
    }()
    
    let progressViewD: UIProgressView = {
        let pv = UIProgressView()
        pv.progress = 0.5
        
        return pv
    }()
    
    let loadDImageButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("Load", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        bt.backgroundColor = .tintColor
        bt.layer.cornerRadius = 4
        
        return bt
    }()
    // MARK: E
    let stackViewE: UIStackView = {
        let sv = UIStackView()
        
        return sv
    }()
    
    let loadEImageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(systemName: "photo")
        iv.tintColor = .tintColor
        
        return iv
    }()
    
    let progressViewE: UIProgressView = {
        let pv = UIProgressView()
        pv.progress = 0.5
        
        return pv
    }()
    
    let loadEImageButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("Load", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        bt.backgroundColor = .tintColor
        bt.layer.cornerRadius = 4
        
        return bt
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
        
        self.stackViewA.addSubview(loadAImageView)
        self.stackViewA.addSubview(progressViewA)
        self.stackViewA.addSubview(loadAImageButton)
        
        self.stackViewB.addSubview(loadBImageView)
        self.stackViewB.addSubview(progressViewB)
        self.stackViewB.addSubview(loadBImageButton)
        
        self.stackViewC.addSubview(loadCImageView)
        self.stackViewC.addSubview(progressViewC)
        self.stackViewC.addSubview(loadCImageButton)
        
        self.stackViewD.addSubview(loadDImageView)
        self.stackViewD.addSubview(progressViewD)
        self.stackViewD.addSubview(loadDImageButton)
        
        self.stackViewE.addSubview(loadEImageView)
        self.stackViewE.addSubview(progressViewE)
        self.stackViewE.addSubview(loadEImageButton)
        
        self.addSubview(stackViewA)
        self.addSubview(stackViewB)
        self.addSubview(stackViewC)
        self.addSubview(stackViewD)
        self.addSubview(stackViewE)
        self.addSubview(loadAllButton)
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        stackViewA.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
            make.top.equalTo(safeAreaLayoutGuide)
            make.height.equalTo(100)
        }
        loadAImageView.snp.makeConstraints { make in
            make.centerY.equalTo(stackViewA)
            make.leading.equalTo(stackViewA.snp.leading).offset(20)
            make.width.equalTo(120)
            make.height.equalTo(90)
        }
        progressViewA.snp.makeConstraints { make in
            make.centerY.equalTo(stackViewA)
            make.leading.equalTo(loadAImageView.snp.trailing).offset(4)
        }
        loadAImageButton.snp.makeConstraints { make in
            make.centerY.equalTo(stackViewA)
            make.leading.equalTo(progressViewA.snp.trailing)
            make.width.equalTo(80)
            make.trailing.equalTo(stackViewA.snp.trailing).offset(-20)
        }
        
        stackViewB.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
            make.top.equalTo(stackViewA.snp.bottom)
            make.height.equalTo(100)
        }
        loadBImageView.snp.makeConstraints { make in
            make.centerY.equalTo(stackViewB)
            make.leading.equalTo(stackViewB.snp.leading).offset(20)
            make.width.equalTo(120)
            make.height.equalTo(90)
        }
        progressViewB.snp.makeConstraints { make in
            make.centerY.equalTo(stackViewB)
            make.leading.equalTo(loadBImageView.snp.trailing).offset(4)
        }
        loadBImageButton.snp.makeConstraints { make in
            make.centerY.equalTo(stackViewB)
            make.leading.equalTo(progressViewB.snp.trailing)
            make.width.equalTo(80)
            make.trailing.equalTo(stackViewB.snp.trailing).offset(-20)
        }
        
        stackViewC.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
            make.top.equalTo(stackViewB.snp.bottom)
            make.height.equalTo(100)
        }
        loadCImageView.snp.makeConstraints { make in
            make.centerY.equalTo(stackViewC)
            make.leading.equalTo(stackViewC.snp.leading).offset(20)
            make.width.equalTo(120)
            make.height.equalTo(90)
        }
        progressViewC.snp.makeConstraints { make in
            make.centerY.equalTo(stackViewC)
            make.leading.equalTo(loadCImageView.snp.trailing).offset(4)
        }
        loadCImageButton.snp.makeConstraints { make in
            make.centerY.equalTo(stackViewC)
            make.leading.equalTo(progressViewC.snp.trailing)
            make.width.equalTo(80)
            make.trailing.equalTo(stackViewC.snp.trailing).offset(-20)
        }
        
        stackViewD.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
            make.top.equalTo(stackViewC.snp.bottom)
            make.height.equalTo(100)
        }
        loadDImageView.snp.makeConstraints { make in
            make.centerY.equalTo(stackViewD)
            make.leading.equalTo(stackViewD.snp.leading).offset(20)
            make.width.equalTo(120)
            make.height.equalTo(90)
        }
        progressViewD.snp.makeConstraints { make in
            make.centerY.equalTo(stackViewD)
            make.leading.equalTo(loadDImageView.snp.trailing).offset(4)
        }
        loadDImageButton.snp.makeConstraints { make in
            make.centerY.equalTo(stackViewD)
            make.leading.equalTo(progressViewD.snp.trailing)
            make.width.equalTo(80)
            make.trailing.equalTo(stackViewD.snp.trailing).offset(-20)
        }
        
        stackViewE.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
            make.top.equalTo(stackViewD.snp.bottom)
            make.height.equalTo(100)
        }
        loadEImageView.snp.makeConstraints { make in
            make.centerY.equalTo(stackViewE)
            make.leading.equalTo(stackViewE.snp.leading).offset(20)
            make.width.equalTo(120)
            make.height.equalTo(90)
        }
        progressViewE.snp.makeConstraints { make in
            make.centerY.equalTo(stackViewE)
            make.leading.equalTo(loadEImageView.snp.trailing).offset(4)
        }
        loadEImageButton.snp.makeConstraints { make in
            make.centerY.equalTo(stackViewE)
            make.leading.equalTo(progressViewE.snp.trailing)
            make.width.equalTo(80)
            make.trailing.equalTo(stackViewE.snp.trailing).offset(-20)
        }
        
        loadAllButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.top.equalTo(stackViewE.snp.bottom).offset(20)
        }
    }
}
