//
//  UserModel.swift
//  Wave Test-Zin Lin Phyo
//
//  Created by Zin Lin Phyo on 26/12/2020.
//  Copyright © 2020 Zin Lin Phyo. All rights reserved.
//

import Foundation

class UserModel {
    
    // MARK: - Singleton Init
    private init() {}
    
    class func shared() -> UserModel {
        return sharedDataModel
    }
    
    private static var sharedDataModel: UserModel = {
        let dataModel = UserModel()
        return dataModel
    }()
    
    // MARK : - Attributes
    private(set) var user = User(name: "Zin Lin Phyo")
}

struct User {
    var name: String
}
