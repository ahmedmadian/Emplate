//
//  DateConverterTests.swift
//  EmplateTests
//
//  Created by Ahmed Madian on 12/28/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//


import XCTest
@testable import Emplate

class DateConverterTests: XCTestCase {
    
    var uUT: DateConvertor? = nil
    
    override func setUp() {
        uUT = DateConvertor.shared
    }
    
    func test_getConverted() {
        let actualResutl = uUT?.getConverted(dateString: "2019-12-25T01:46:30+00:00", fromFormat: .yyyyMMddTHHmmssZ, toFormat: .MMddyyyy)
        let expectedResult: String? = "12/25/2019"
        XCTAssert(actualResutl == expectedResult)
    }
}
