//
//  GridTravelerUniquePathsTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-28.
//

import XCTest
@testable import Algorithms

class GridTravelerUniquePathsTest: XCTestCase {

    func test1() {
        let sut = GridTravelerUniquePaths.solution(3, 3)
        XCTAssertEqual(sut, 6)
    }

    func test2() {
        let sut = GridTravelerUniquePaths.solution(3, 7)
        XCTAssertEqual(sut, 28)

    }

    func test3() {
        let sut = GridTravelerUniquePaths.solution(18, 18)
        XCTAssertEqual(sut, 2333606220)
    }
}
