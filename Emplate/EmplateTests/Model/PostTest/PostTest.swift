//
//  PostTest.swift
//  EmplateTests
//
//  Created by Ahmed Madian on 12/26/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import XCTest
@testable import Emplate

class PostTest: XCTestCase {

    
    func testSuccessInitValidJson() {
        let wrapper = try? JSONDecoder().decode(Post.self, from: validJson.data(using: .utf8)!)
        XCTAssertNotNil(wrapper)
    }
    
    func testSuccessInitValidJson_missing_Id() {
        let wrapper = try? JSONDecoder().decode(Post.self, from: inValidJsonMissingId.data(using: .utf8)!)
        XCTAssertNil(wrapper)
    }
}
