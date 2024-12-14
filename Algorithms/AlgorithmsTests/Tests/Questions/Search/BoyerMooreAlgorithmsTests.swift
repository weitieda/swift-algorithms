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
			"arst".findIndex(of: "arstg")
		)
	}
}
