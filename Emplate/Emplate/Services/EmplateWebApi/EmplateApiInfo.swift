//
//  EmplateApiInfo.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/24/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

struct EmplateDomainInfo {
    private let APIScheme = "https"
    private let APIHost = "emplate.dev"
    private let APIPath = "/v9"
    
    var BaseURL : String {
        return "\(APIScheme)://\(APIHost)\(APIPath)"
    }
    
    private init() {}
    
    static var shared: EmplateDomainInfo {
        return EmplateDomainInfo()
    }
}

enum EmplateEndpoints : String {
    case posts = "/posts"
}

struct HeaderParameterKeys {
    static let APIKey = "X-Api-Key"
    static let Accept = "Accept"
    static let ContentType = "Content-Type"
}

struct HeaderParameterValues {
    static let APIKey = "$2y$10$gpin5yXpMxbjWvsnnDMhLOYO7kpZSag7CKIDndWmUeJ/4WEchaAxK"
    static let Accept = "application/json"
    static let ContentType = "application/json"
}
