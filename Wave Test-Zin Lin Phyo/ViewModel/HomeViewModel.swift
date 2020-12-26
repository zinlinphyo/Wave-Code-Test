//
//  HomeViewModel.swift
//  Wave Test-Zin Lin Phyo
//
//  Created by Zin Lin Phyo on 25/12/2020.
//  Copyright © 2020 Zin Lin Phyo. All rights reserved.
//

import Foundation

struct HomeViewModel {
    
    private(set) var isShowAmount = false
    private(set) var userName = UserModel.shared().user.name
    private var amount = WalletModel.shared().wallet.amount
    
    init() {
        
    }
    
    mutating func toggleShowAmount() {
        self.isShowAmount.toggle()
    }
    
    func getAmount() -> String {
        let amount : String = isShowAmount ? String(self.amount) + " Kyat" : "***** Kyat"
        return amount
    }
    
}
