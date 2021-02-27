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
        expect("123", when: "321")
        expect("", when: "")
        expect("1", when: "1")
        expect("21", when: "12")
        expect("11", when: "11")
    }

    private func expect(_ result: String, when input: String) {
        let sut = ReverseStringRecursively.solution(input)
        XCTAssertEqual(sut, result)
    }
}
