//
//  PromotionCollectionViewCell.swift
//  Wave Test-Zin Lin Phyo
//
//  Created by Zin Lin Phyo on 6/12/20.
//  Copyright © 2020 Zin Lin Phyo. All rights reserved.
//

import UIKit

class PromotionCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        self.addSubview(containerView)
        containerView.addSubview(ivPromoImage)
        
        containerView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        
        ivPromoImage.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
    }
    
    //MARK: - View Components
    lazy var containerView : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        
        return view
    }()
    
    lazy var ivPromoImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "promotion"))
        imageView.contentMode = .scaleToFill
        
        return imageView
    }()
}
