//
//  Assert.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 12/14/24.
//

import Difference
import XCTest

extension XCTestCase {
	public func assertEqual<T: Equatable>(
		_ expected: @autoclosure () throws -> T,
		_ received: @autoclosure () throws -> T,
		file: StaticString = #filePath,
		line: UInt = #line
	) {
		do {
			let expected = try expected()
			let received = try received()
			XCTAssertTrue(expected == received, "Found difference for \n" + diff(expected, received).joined(separator: ", "), file: file, line: line)
		} catch {
			XCTFail("Caught error while testing: \(error)", file: file, line: line)
		}
	}
}
