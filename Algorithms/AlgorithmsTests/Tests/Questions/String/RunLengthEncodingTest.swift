//
//  RunLengthEncodingTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-11.
//

import XCTest
@testable import Algorithms

class RunLengthEncodingTest: XCTestCase {

    func test() {
        [
            ("9A4A2B4C2D", "AAAAAAAAAAAAABBCCCCDD"),
            ("1a", "a"),
            ("2a", "aa"),
            ("1a1b", "ab"),
            ("2a1b1a", "aaba"),
            ("9a1a", "aaaaaaaaaa")
        ].forEach { (result, str) in
            expect(result, when: RunLengthEncoding.solution(string: str))
        }
    }
}
