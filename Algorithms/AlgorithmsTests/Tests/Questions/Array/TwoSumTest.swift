//
//  TwoSumTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-01-27.
//

import XCTest
@testable import Algorithms

class TwoSumTest: XCTestCase {

    func test() {
        let input1 = [3, 5, -4, 8, 11, 1, -1, 6]
        let target1 = 10

        XCTAssertTrue(
            isSameArrayIgnoreOrder([6, 4],
                                   TwoSum.solution(input: input1, target: target1))
        )

        let input2 = [4, 6, 1, -3]
        let target2 = 11
        XCTAssertEqual([], TwoSum.solution(input: input2, target: target2))
    }
}
