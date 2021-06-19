//
//  PAYSTACKTRANSCHARGESTOCUSTests.swift
//  PAYSTACKTRANSCHARGESTOCUSTests
//
//  Created by Adewoye Kolade on 19/06/2021.
//

import XCTest
@testable import PAYSTACKTRANSCHARGESTOCUS

class PAYSTACKTRANSCHARGESTOCUSTests: XCTestCase {
    
    var paystackTransChargesToCus: PAYSTACKTRANSCHARGESTOCUS!

        override func setUp() {
            paystackTransChargesToCus = PAYSTACKTRANSCHARGESTOCUS()
        }

        func testCalculateTotalPrice() {
            XCTAssertEqual(paystackTransChargesToCus.calculateTotalPrice(amount: "100"), "101")
        }

}
