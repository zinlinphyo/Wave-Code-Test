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
        
        view.addSubview(headerView)
        headerView.addSubview(userInfoView)
        userInfoView.addSubview(ivUserProfile)
        userInfoView.addSubview(lblUserName)
        userInfoView.addSubview(lblAmount)
        userInfoView.addSubview(ivShowAmount)
        
        setConstraints()
    }
    
    private func setConstraints() {
        
        headerView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.2)
        }
        
        userInfoView.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.topMargin)
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
        
    }
    
    //MARK: - View Components
    lazy var headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .primaryYellow
        
        return view
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
}
