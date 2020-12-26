//
//  WalletModel.swift
//  Wave Test-Zin Lin Phyo
//
//  Created by Zin Lin Phyo on 26/12/2020.
//  Copyright © 2020 Zin Lin Phyo. All rights reserved.
//

import Foundation

class WalletModel {
    
    // MARK: - Singleton Init
    private init() {}
    
    class func shared() -> WalletModel {
        return sharedDataModel
    }
    
    private static var sharedDataModel: WalletModel = {
        let dataModel = WalletModel()
        return dataModel
    }()
    
    // MARK : - Attributes
    private(set) var wallet = Wallet(amount: 12000)
}

struct Wallet {
    var amount: Int
}
