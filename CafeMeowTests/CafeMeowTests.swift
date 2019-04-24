//
//  CafeMeowTests.swift
//  CafeMeowTests
//
//  Created by Anna Coulter on 4/9/19.
//  Copyright © 2019 Anna Coulter. All rights reserved.
//

import XCTest
@testable import CafeMeow

class CafeMeowTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let mac = Cat (name: "Mac", breed: "Bald", age: 3)
        XCTAssertEqual ("Mac", mac.name)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
