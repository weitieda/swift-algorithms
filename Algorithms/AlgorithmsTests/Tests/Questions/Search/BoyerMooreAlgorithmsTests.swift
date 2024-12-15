//
//  BoyerMooreAlgorithmsTests.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 12/14/24.
//

import XCTest
import Algorithms

final class BoyerMooreAlgorithmsTests: XCTestCase {
	func test_patternIsLongerThanSource() {
		XCTAssertNil(
			"123".findIndex(of: "1234")
		)
	}
	
	func test_sameLength() {
		XCTAssertEqual(
			"123".findIndex(of: "321"),
		  nil
		)
	}
	
	func test_patternIsEmpty() {
		XCTAssertEqual(
			"123".findIndex(of: ""),
			nil
		)
	}
	
	func test_badCharTable() {
		assertEqual(
			"tooth".buildBadCharTable(),
			["t": 1, "o": 2, "h": 0]
		)
	}
}
