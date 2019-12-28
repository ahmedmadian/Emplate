//
//  BaseApiServiceError.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/26/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//
import Foundation

enum BaseAPIServiceError: LocalizedError {
    case parsingError
    case serverError(message: String, code: Int)
    
    var errorDescription: String? {
        switch self {
        case .parsingError: return "JSON Parsing Failure"
        case .serverError(let message, let code): return "\(message)<\(code)>"
        }
    }
}
