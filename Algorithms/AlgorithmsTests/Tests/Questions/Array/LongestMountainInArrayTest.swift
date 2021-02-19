//
//  LongestMountainInArray.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-02.
//

import XCTest
@testable import Algorithms

class LongestMountainInArrayTest: XCTestCase {

    func test1() {
        let arr = [2, 1, 4, 7, 3, 2, 5]
        let sut = LongestMountainInArray.solution(arr)

        XCTAssertEqual(5, sut)
    }

    func test2() {
        let arr = [0, 0, 0]
        let sut = LongestMountainInArray.solution(arr)

        XCTAssertEqual(0, sut)
    }

    func test3() {
        let arr = [1, 2, 3, 3, 4, 0, 10]
        let sut = LongestMountainInArray.solution(arr)

        XCTAssertEqual(3, sut)
    }
}
