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
        expect("9A4A2B4C2D", when: "AAAAAAAAAAAAABBCCCCDD")
        expect("1a", when: "a")
        expect("2a", when: "aa")
        expect("1a1b", when: "ab")
        expect("2a1b1a", when: "aaba")
        expect("9a1a", when: "aaaaaaaaaa")

    }

    func expect(_ result: String, when input: String) {
        let sut = RunLengthEncoding.solution(string: input)
        XCTAssertEqual(result, sut)
    }
}
