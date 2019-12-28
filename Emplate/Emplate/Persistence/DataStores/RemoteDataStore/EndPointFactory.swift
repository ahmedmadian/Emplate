//
//  EndPointFactory.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/26/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Foundation
protocol Endpoint {
    var parameters: [String : Any] { get }
    var headers: [String : String] { get }
    var fullURL: String { get }
    var method: HTTPMethod { get }
}

enum EndPointFactory:String, Endpoint {
    
    //MARK:- EndPoints Names
    case posts = "posts"
    
    //MARK:- Properties
    private var schema: HTTPSchema {
        switch self {
        case .posts:
            return .HTTPS
        }
    }
    
    private var host: String {
        switch self {
        case .posts:
            return "emplate.dev"
        }
    }
    
    private var path: String {
        switch self {
        case .posts:
            return "v9"
        }
    }
    
    private var base: String {
        switch self {
        case .posts:
            return "\(schema.rawValue)://\(host)"
        }
    }
    
    var fullURL: String {
        switch self {
        case .posts:
            return "\(self.base)/\(self.path)/\(self.rawValue)"
        }
    }
    
    var parameters: [String : Any] {
        switch self {
        case .posts:
            return ["include": "postfields,postperiods,thumbnail"]
        }
    }
    
    var headers: [String: String] {
        switch self {
        case .posts:
            return [HeaderParameterKeys.Accept : HeaderParameterValues.Accept,
            HeaderParameterKeys.ContentType : HeaderParameterValues.ContentType,
            HeaderParameterKeys.APIKey : HeaderParameterValues.APIKey]
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .posts:
            return .get
        }
    }
}
