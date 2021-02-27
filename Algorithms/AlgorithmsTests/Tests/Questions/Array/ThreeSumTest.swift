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
        let expected = [[-1, -1, 2], [-1, 0, 1]]

        XCTAssertTrue(isSame2DArray(sut, expected))
    }
}
