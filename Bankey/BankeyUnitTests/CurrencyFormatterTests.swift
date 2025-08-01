//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by Hummingbird on 10/06/2025.
//

import Foundation
import XCTest

@testable import Bankey

class Test: XCTestCase {
    
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
     }
    
    func testBreakDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "sh 929,466")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() throws {
        let results = formatter.dollarsFormatted(929466.23)
       XCTAssertEqual(results, "Ksh 929,466.23")
    }
    
    func testDollarsFormattedWithCurrencySymbol() throws {
        let locale = Locale.current
        let currencySymbol = locale.currencySymbol ?? ""
        let results = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(results, "\(currencySymbol) 929,466.23")
    }
}
