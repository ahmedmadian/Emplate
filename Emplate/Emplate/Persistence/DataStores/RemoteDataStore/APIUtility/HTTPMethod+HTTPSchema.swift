//
//  HTTPMethod+HTTPSchema.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/27/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import Foundation

public enum HTTPSchema: String {
    case HTTP = "http"
    case HTTPS = "https"
}

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

