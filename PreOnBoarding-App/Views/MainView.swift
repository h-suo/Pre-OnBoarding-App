//
//  MainView.swift
//  PreOnBoarding-App
//
//  Created by 표현수 on 2023/02/15.
//

import UIKit
import SnapKit

class MainView: UIView {
    
    let tableView: UITableView = {
        let ctv = UITableView()
        ctv.backgroundColor = .systemFill
        
        return ctv
    }()
    
    let button: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("Load All Images", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .tintColor
        bt.layer.cornerRadius = 4
        
        return bt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        setupStackView()
    }
    
    func setupStackView() {
        
        self.addSubview(tableView)
        self.addSubview(button)
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        tableView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalTo(safeAreaLayoutGuide)
            make.height.equalTo(400)
        }
        button.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.top.equalTo(tableView.snp.bottom).offset(20)
        }
    }
}
