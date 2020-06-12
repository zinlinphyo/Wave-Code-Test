//
//  HomeServicesAndProductsTableViewCell.swift
//  Wave Test-Zin Lin Phyo
//
//  Created by Zin Lin Phyo on 6/12/20.
//  Copyright © 2020 Zin Lin Phyo. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialCards

class HomeServicesAndProductsTableViewCell: UITableViewCell {

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
        
        bgView.addSubview(topupView)
        topupView.addSubview(ivTopup)
        topupView.addSubview(lblTopup)
        
        bgView.addSubview(travelView)
        travelView.addSubview(ivTravel)
        travelView.addSubview(lblTravel)
        
        bgView.addSubview(gamesView)
        gamesView.addSubview(ivGames)
        gamesView.addSubview(lblGames)
        
        bgView.addSubview(eventTicketView)
        eventTicketView.addSubview(ivEventTicket)
        eventTicketView.addSubview(lblEventTicket)
        
        bgView.addSubview(donationsView)
        donationsView.addSubview(ivDonations)
        donationsView.addSubview(lblDonations)
        
        bgView.addSubview(moreView)
        moreView.addSubview(ivMore)
        moreView.addSubview(lblMore)
    }
    
    override func layoutSubviews() {
        bgView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview().offset(-16)
        }
        
        topupView.snp.makeConstraints { (make) in
            make.top.left.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.333)
            make.height.equalToSuperview().multipliedBy(0.5)
        }
        
        ivTopup.snp.makeConstraints { (make) in
            make.width.height.equalTo(56)
            make.centerX.equalToSuperview().offset(0)
            make.centerY.equalToSuperview().offset(-16)
        }
        
        lblTopup.snp.makeConstraints { (make) in
            make.top.equalTo(ivTopup.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }
        
        travelView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.333)
            make.height.equalToSuperview().multipliedBy(0.5)
        }
        
        ivTravel.snp.makeConstraints { (make) in
            make.width.height.equalTo(56)
            make.centerX.equalToSuperview().offset(0)
            make.centerY.equalToSuperview().offset(-16)
        }
        
        lblTravel.snp.makeConstraints { (make) in
            make.top.equalTo(ivTravel.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }
        
        gamesView.snp.makeConstraints { (make) in
            make.top.right.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.333)
            make.height.equalToSuperview().multipliedBy(0.5)
        }
        
        ivGames.snp.makeConstraints { (make) in
            make.width.height.equalTo(56)
            make.centerX.equalToSuperview().offset(0)
            make.centerY.equalToSuperview().offset(-16)
        }
        
        lblGames.snp.makeConstraints { (make) in
            make.top.equalTo(ivGames.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }
        
        eventTicketView.snp.makeConstraints { (make) in
            make.top.equalTo(topupView.snp.bottom)
            make.left.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.333)
            make.height.equalToSuperview().multipliedBy(0.5)
        }
        
        ivEventTicket.snp.makeConstraints { (make) in
            make.width.height.equalTo(56)
            make.centerX.equalToSuperview().offset(0)
            make.centerY.equalToSuperview().offset(-16)
        }
        
        lblEventTicket.snp.makeConstraints { (make) in
            make.top.equalTo(ivEventTicket.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }
        
        donationsView.snp.makeConstraints { (make) in
            make.top.equalTo(topupView.snp.bottom)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.333)
            make.height.equalToSuperview().multipliedBy(0.5)
        }
        
        ivDonations.snp.makeConstraints { (make) in
            make.width.height.equalTo(56)
            make.centerX.equalToSuperview().offset(0)
            make.centerY.equalToSuperview().offset(-16)
        }
        
        lblDonations.snp.makeConstraints { (make) in
            make.top.equalTo(ivDonations.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }
        
        moreView.snp.makeConstraints { (make) in
            make.top.equalTo(topupView.snp.bottom)
            make.right.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.333)
            make.height.equalToSuperview().multipliedBy(0.5)
        }
        
        ivMore.snp.makeConstraints { (make) in
            make.width.height.equalTo(56)
            make.centerX.equalToSuperview().offset(0)
            make.centerY.equalToSuperview().offset(-16)
        }
        
        lblMore.snp.makeConstraints { (make) in
            make.top.equalTo(ivMore.snp.bottom).offset(8)
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
    
    let topupView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    lazy var ivTopup: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "topup"))
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    lazy var lblTopup: UILabel = {
        let label = UILabel()
        label.text = "Topup"
        label.font = .regularMedium
        label.textColor = .black
        
        return label
    }()
    
    let travelView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    lazy var ivTravel: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "travel"))
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    lazy var lblTravel: UILabel = {
        let label = UILabel()
        label.text = "Travel"
        label.font = .regularMedium
        label.textColor = .black
        
        return label
    }()
    
    let gamesView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    lazy var ivGames: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "game"))
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    lazy var lblGames: UILabel = {
        let label = UILabel()
        label.text = "Games"
        label.font = .regularMedium
        label.textColor = .black
        
        return label
    }()
    
    let eventTicketView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    lazy var ivEventTicket: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "tickets"))
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    lazy var lblEventTicket: UILabel = {
        let label = UILabel()
        label.text = "Event Tickets"
        label.font = .regularMedium
        label.textColor = .black
        
        return label
    }()
    
    let donationsView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    lazy var ivDonations: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "donation"))
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    lazy var lblDonations: UILabel = {
        let label = UILabel()
        label.text = "Donations"
        label.font = .regularMedium
        label.textColor = .black
        
        return label
    }()
    
    let moreView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    lazy var ivMore: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "more"))
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    lazy var lblMore: UILabel = {
        let label = UILabel()
        label.text = "More"
        label.font = .regularMedium
        label.textColor = .black
        
        return label
    }()

}
