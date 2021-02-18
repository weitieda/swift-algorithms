//
//  ThreeSumTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-01-28.
//

import XCTest
@testable import Algorithms

class ThreeSumTest: XCTestCase {
    func test() {
        let nums = [-1, 0, 1, 2, -1, -4]

        let sut = ThreeSum.solution(input: nums)

        let exp = [[-1, -1, 2], [-1, 0, 1]]

        XCTAssertEqual(sut.count, exp.count)
        avoidOrder(sut).forEach {
            XCTAssertTrue(avoidOrder(exp).contains($0))
        }
    }

    private func avoidOrder(_ array: [[Int]]) -> [[Int]] {
        array.map { $0.sorted() }
    }
}