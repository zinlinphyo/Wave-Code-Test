//
//  HomeMoneyActionTableViewCell.swift
//  Wave Test-Zin Lin Phyo
//
//  Created by Zin Lin Phyo on 6/11/20.
//  Copyright © 2020 Zin Lin Phyo. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialCards

class HomeMoneyActionTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.contentView.backgroundColor = .clear
        self.contentView.addSubview(bgView)
        
        bgView.addSubview(sendView)
        sendView.addSubview(ivSend)
        sendView.addSubview(lblSend)
        
        bgView.addSubview(seperator1)
        
        bgView.addSubview(historyView)
        historyView.addSubview(ivHistory)
        historyView.addSubview(lblHistory)
        
        bgView.addSubview(seperator2)
        
        bgView.addSubview(cashInOutView)
        cashInOutView.addSubview(ivCashInOut)
        cashInOutView.addSubview(lblCashInOut)
    }
    
    override func layoutSubviews() {
        bgView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview().offset(-16)
        }
        
        sendView.snp.makeConstraints { (make) in
            make.top.left.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.333)
        }
        
        ivSend.snp.makeConstraints { (make) in
            make.width.height.equalTo(56)
            make.centerX.equalToSuperview().offset(0)
            make.centerY.equalToSuperview().offset(-16)
        }
        
        lblSend.snp.makeConstraints { (make) in
            make.top.equalTo(ivSend.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }
        
        seperator1.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(16)
            make.bottom.equalToSuperview().offset(-16)
            make.right.equalTo(historyView.snp.left)
            make.width.equalTo(2)
        }
        
        historyView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.center.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.333)
        }
        
        ivHistory.snp.makeConstraints { (make) in
            make.width.height.equalTo(56)
            make.centerX.equalToSuperview().offset(0)
            make.centerY.equalToSuperview().offset(-16)
        }
        
        lblHistory.snp.makeConstraints { (make) in
            make.top.equalTo(ivHistory.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }
        
        seperator2.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(16)
            make.bottom.equalToSuperview().offset(-16)
            make.left.equalTo(historyView.snp.right)
            make.width.equalTo(2)
        }
        
        cashInOutView.snp.makeConstraints { (make) in
            make.top.right.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.333)
        }
        
        ivCashInOut.snp.makeConstraints { (make) in
            make.width.height.equalTo(56)
            make.centerX.equalToSuperview().offset(0)
            make.centerY.equalToSuperview().offset(-16)
        }
        
        lblCashInOut.snp.makeConstraints { (make) in
            make.top.equalTo(ivCashInOut.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }
    }
    
    //MARK: - View Components
    let bgView: MDCCard = {
        let cardView = MDCCard()
        cardView.backgroundColor = .white
        cardView.isInteractable = false
        cardView.cornerRadius = 8
        
        return cardView
    }()
    
    let sendView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    lazy var ivSend: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "send_money_icon"))
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    lazy var lblSend: UILabel = {
        let label = UILabel()
        label.text = "Send"
        label.font = .regularMedium
        label.textColor = .black
        
        return label
    }()
    
    let seperator1: UIView = {
        let view = UIView()
        view.backgroundColor = .bgGray
        
        return view
    }()
    
    let historyView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    lazy var ivHistory: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "history"))
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    lazy var lblHistory: UILabel = {
        let label = UILabel()
        label.text = "History"
        label.font = .regularMedium
        label.textColor = .black
        
        return label
    }()
    
    let seperator2: UIView = {
        let view = UIView()
        view.backgroundColor = .bgGray
        
        return view
    }()
    
    let cashInOutView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    lazy var ivCashInOut: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "cashin"))
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    lazy var lblCashInOut: UILabel = {
        let label = UILabel()
        label.text = "Cash In/Out"
        label.font = .regularMedium
        label.textColor = .black
        
        return label
    }()

}
