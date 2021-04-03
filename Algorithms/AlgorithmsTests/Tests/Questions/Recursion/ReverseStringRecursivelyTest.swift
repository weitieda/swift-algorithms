//
//  ReverseStringRecursivelyTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-27.
//

import XCTest
@testable import Algorithms

class ReverseStringRecursivelyTest: XCTestCase {

    func test() {
        [
            ("", ""),
            ("321", "123"),
            ("1", "1"),
            ("11", "11"),
            ("21", "12")
        ].forEach { (string, result) in
            expect(result, when: ReverseStringRecursively.solution(string))
        }
    }
}
