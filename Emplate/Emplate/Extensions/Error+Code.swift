//
//  Error+Code.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/26/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Foundation

let KErrorInternetConnection = -1009

extension Error {
    var code: Int { return (self as NSError).code }
    var domain: String { return (self as NSError).domain }
    
    func isNoInternet() -> Bool {
        return self.code == KErrorInternetConnection
    }
}
