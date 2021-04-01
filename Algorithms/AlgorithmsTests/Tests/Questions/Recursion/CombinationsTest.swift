//
//  CombinationsTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-27.
//

import XCTest
@testable import Algorithms

class CombinationsTest: XCTestCase {

    func test1() {
        let sut = Combinations.solution(array: ["a", "b", "c"])
        XCTAssertEqual(sut, [[], ["c"], ["b"], ["c", "b"], ["a"], ["c", "a"], ["b", "a"], ["c", "b", "a"]])
    }

    func test2() {
        let sut = Combinations.solution(array: ["a", "b"])
        XCTAssertEqual(sut, [[], ["b"], ["a"], ["b", "a"]])
    }

    func test3() {
        let sut = Combinations.solution(array: ["a"])
        XCTAssertEqual(sut, [[], ["a"]])
    }

    func test4() {
        let sut = Combinations.solution(array: [String]())
        XCTAssertEqual(sut, [[]])
    }
}
