//
//  CombinationSumTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-03-07.
//

import XCTest
@testable import Algorithms

class CombinationSumTest: XCTestCase {

    func test1() {
        let sut = CombinationSum.solution(input: [7, 14], target: 300)
        XCTAssertEqual([[Int]](), sut)
    }

    func test2() {
        let sut = CombinationSum.solution(input: [2, 3], target: 7)
        XCTAssertTrue(isSame2DArray(sut, [[2, 3, 2]]))
    }

    func test3() {
        let sut = CombinationSum.solution(input: [5, 3, 4, 7],
                                          target: 7)
        XCTAssertTrue(
            isSame2DArray(sut,
                          [
                            [3, 4],
                            [7]
                          ])
        )
    }
    
    func test4() {
        let sut = CombinationSum.solution(input: [5, 2, 3, 10],
                                          target: 10)
        XCTAssertTrue(
            isSame2DArray(sut,
                          [
                            [5, 5],
                            [5, 2, 3],
                            [10],
                            [2, 2, 2, 2, 2],
                            [2, 2, 3, 3]
                          ])
        )
    }
}
