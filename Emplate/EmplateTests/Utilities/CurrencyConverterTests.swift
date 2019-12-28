//
//  CurrencyConverterTests.swift
//  EmplateTests
//
//  Created by Ahmed Madian on 12/28/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import XCTest
@testable import Emplate

class CurrencyConverterTests: XCTestCase {
    
    var uUT: CurrencyConverter? = nil
    
    override func setUp() {
        uUT = CurrencyConverter.shared
    }
    
    func test_formatAsCurrency() {
        let formttedCurrency = uUT!.formatAsCurrency(from: 500, currencyCode: .DanishKrone)!
        let expectedResult = "DKK 500.0"
        XCTAssert(formttedCurrency == expectedResult)
    }
}
