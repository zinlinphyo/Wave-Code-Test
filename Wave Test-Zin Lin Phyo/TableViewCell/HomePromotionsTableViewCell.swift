//
//  HomePromotionsTableViewCell.swift
//  Wave Test-Zin Lin Phyo
//
//  Created by Zin Lin Phyo on 6/12/20.
//  Copyright © 2020 Zin Lin Phyo. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialCards

class HomePromotionsTableViewCell: UITableViewCell {

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
        
        bgView.addSubview(lblTitle)
        bgView.addSubview(btnSeeAll)
        
        bgView.addSubview(collectionView)
    }
    
    override func layoutSubviews() {
        bgView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview().offset(-16)
        }
        
        lblTitle.snp.makeConstraints { (make) in
            make.top.left.equalToSuperview().offset(16)
        }
        
        btnSeeAll.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(8)
            make.right.equalToSuperview().offset(-16)
        }
        
        collectionView.snp.makeConstraints { (make) in
            make.top.equalTo(lblTitle.snp.bottom).offset(16)
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview().offset(-16)
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
    
    lazy var lblTitle: UILabel = {
        let label = UILabel()
        label.text = "Promotions"
        label.font = .regularMedium
        label.textColor = .black
        
        return label
    }()
    
    lazy var btnSeeAll: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("See All", for: .normal)
        button.titleLabel?.font = .regularMedium
        button.setTitleColor(.blue, for: .normal)
//        button.addTarget(self, action: #selector(didTapBtnDetail), for: .touchUpInside)
        return button
    }()
    
    lazy var collectionView : UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize(width: 1, height: 1)
        flowLayout.sectionInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumInteritemSpacing = 8.0
        
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: flowLayout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.delegate = self
        cv.dataSource = self
        cv.register(PromotionCollectionViewCell.self, forCellWithReuseIdentifier: "PromotionCollectionViewCell")
        cv.backgroundColor = .clear
        cv.clipsToBounds = true
        cv.showsVerticalScrollIndicator = false
        cv.showsHorizontalScrollIndicator = false
        
        return cv
    }()

}

extension HomePromotionsTableViewCell: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PromotionCollectionViewCell", for: indexPath) as? PromotionCollectionViewCell {
            cell.layoutIfNeeded()
            return cell
        }
        return UICollectionViewCell()
    }
}

extension HomePromotionsTableViewCell: UICollectionViewDelegate {
    
}

extension HomePromotionsTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.layer.bounds.height * 2), height: collectionView.layer.bounds.height)
    }
}
