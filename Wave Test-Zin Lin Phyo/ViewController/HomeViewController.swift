//
//  HomeViewController.swift
//  Wave Test-Zin Lin Phyo
//
//  Created by Zin Lin Phyo on 6/10/20.
//  Copyright © 2020 Zin Lin Phyo. All rights reserved.
//

import UIKit
import SnapKit
import MaterialComponents.MaterialCards

class HomeViewController: UIViewController {
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    //MARK: - UI Rendering
    private func setupUI() {
        
        view.backgroundColor = .bgGray
        
        view.addSubview(headerView)
        headerView.addSubview(userInfoView)
        headerView.addSubview(ivHeaderLogo)
        userInfoView.addSubview(ivUserProfile)
        userInfoView.addSubview(lblUserName)
        userInfoView.addSubview(lblAmount)
        userInfoView.addSubview(ivShowAmount)
        
        view.addSubview(tableView)
        
        setConstraints()
    }
    
    private func setConstraints() {
        
        headerView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.3)
        }
        
        ivHeaderLogo.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.topMargin)
            make.centerX.equalToSuperview()
            make.height.equalTo(56)
        }
        
        userInfoView.snp.makeConstraints { (make) in
            make.top.equalTo(ivHeaderLogo.snp.bottom)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.bottom.equalTo(ivUserProfile)
        }
        
        ivUserProfile.snp.makeConstraints { (make) in
            make.top.left.equalToSuperview().offset(8)
            make.width.height.equalTo(64)
        }
        
        lblUserName.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(16)
            make.left.equalTo(ivUserProfile.snp.right).offset(16)
        }
        
        lblAmount.snp.makeConstraints { (make) in
            make.top.equalTo(lblUserName.snp.bottom).offset(8)
            make.left.equalTo(ivUserProfile.snp.right).offset(16)
        }
        
        ivShowAmount.snp.makeConstraints { (make) in
            make.top.equalTo(lblAmount)
            make.left.equalTo(lblAmount.snp.right).offset(8)
            make.width.equalTo(32)
            make.height.equalTo(24)
        }
        
        tableView.snp.makeConstraints { (make) in
            make.top.equalTo(userInfoView.snp.bottom).offset(16)
            make.left.right.bottom.equalToSuperview().offset(0)
        }
        
    }
    
    //MARK: - View Components
    lazy var headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .primaryYellow
        
        return view
    }()
    
    lazy var ivHeaderLogo: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "WavePay-horizontal"))
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    lazy var userInfoView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        return view
    }()
    
    lazy var ivUserProfile: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "icon_user_home"))
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    lazy var lblUserName: UILabel = {
        let label = UILabel()
        label.text = "Zin Lin Phyo"
        label.font = .boldMedium
        label.textColor = .black
        
        return label
    }()
    
    lazy var lblAmount: UILabel = {
        let label = UILabel()
        label.text = "***** Kyat"
        label.font = .boldMedium
        label.textColor = .black
        
        return label
    }()
    
    lazy var ivShowAmount: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "eye_off"))
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.register(HomeMoneyActionTableViewCell.self, forCellReuseIdentifier: "HomeMoneyActionTableViewCell")
        tableView.register(HomeServicesAndProductsTableViewCell.self, forCellReuseIdentifier: "HomeServicesAndProductsTableViewCell")
        tableView.backgroundColor = .clear
        return tableView
    }()
}

extension HomeViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
            case 0: return 130
            case 1: return 260
            default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "HomeMoneyActionTableViewCell", for: indexPath) as? HomeMoneyActionTableViewCell {
                cell.backgroundColor = .clear
                return cell
            }
            
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "HomeServicesAndProductsTableViewCell", for: indexPath) as? HomeServicesAndProductsTableViewCell {
                cell.backgroundColor = .clear
                return cell
            }
            
        default:
            return UITableViewCell()
        }
        
        return UITableViewCell()
    }
    
    
}

extension HomeViewController: UITableViewDelegate {
    
}
