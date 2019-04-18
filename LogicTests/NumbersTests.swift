//
//  NumbersTests.swift
//  LogicTests
//
//  Created by bearkode on 15/04/2019.
//  Copyright © 2019 bearkode. All rights reserved.
//

import XCTest
@testable import Logic


class NumbersTests: XCTestCase {

    override func setUp() {

    }

    override func tearDown() {

    }

    func testInit() {
        XCTAssertNotNil(Numbers([1, 2, 3, 4]))
        XCTAssertNil(Numbers([1, 2, 3]))
        XCTAssertNil(Numbers([1, 2, 3, 4, 5]))

        XCTAssertNotNil(Numbers([1, 2, 3, 4]))
        XCTAssertNil(Numbers([1, 2, 3, 3]))
        XCTAssertNil(Numbers([2, 2, 3, 8]))
    }

    func testValidate() {
        XCTAssertNotNil(validate([1, 2, 3, 4]))
        XCTAssertFalse(validate([1, 2, 3]))
        XCTAssertFalse(validate([1, 2, 3, 4, 5]))

        XCTAssertTrue(validate([1, 2, 3, 4]))
        XCTAssertFalse(validate([1, 2, 3, 3]))
        XCTAssertFalse(validate([2, 2, 3, 8]))
        
        XCTAssertFalse(validate([11, 2, 8, 3]))
    }

}
