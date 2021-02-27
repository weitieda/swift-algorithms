//
//  PermutationTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-27.
//

import XCTest
@testable import Algorithms

class PermutationTest: XCTestCase {

    func test1() {
        let sut = Permutation.solution([1, 2])
        let expected = [[1, 2], [2, 1]]

        XCTAssertTrue(isSame2DArray(sut, expected))
    }

    func test2() {
        let sut = Permutation.solution([1, 2, 3])

        let expected = [
            [1, 2, 3],
            [1, 3, 2],
            [2, 1, 3],
            [2, 3, 1],
            [3, 1, 2],
            [3, 2, 1]
        ]
        
        XCTAssertTrue(isSame2DArray(sut, expected))
    }
}
