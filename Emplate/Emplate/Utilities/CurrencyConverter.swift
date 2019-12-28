//
//  NumberConverter.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/26/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//
//  - Number Converter - class helps to formate number upon client request
//

import Foundation
class CurrencyConverter {
    
    // MARK:- Properties
    static var shared: CurrencyConverter = CurrencyConverter()
    private let numberFormatter = NumberFormatter()

    //MARK: Initiliazer
    private init(){}
    
    // MARK:- Converter Methods
    func formatAsCurrency(from amount: Double, currencyCode: CurrencyCode) -> String? {
        numberFormatter.numberStyle = .currency
        numberFormatter.currencyCode = currencyCode.rawValue
        numberFormatter.maximumFractionDigits = 1
        return numberFormatter.string(from: NSNumber(value: amount))
    }
}

// MARK: - Currency Codes
public enum CurrencyCode: String {
    case USDollar = "USD"
    case Euro = "EUR"
    case DanishKrone = "DKK"
}

