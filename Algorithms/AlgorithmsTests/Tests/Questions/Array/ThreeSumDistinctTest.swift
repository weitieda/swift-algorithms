//
//  ThreeSumDistinctTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-01-28.
//

import XCTest
@testable import Algorithms

class ThreeSumDistinctTest: XCTestCase {

    func test() {
        [
            (
                [12, 3, 1, 2, -6, 5, -8, 6],
                0,
                [[-8, 2, 6],
                 [-8, 5, 3],
                 [-6, 1, 5]]
            ),
            (
                [1, 2, 3, 4, 5, 6, 7, 8, 9, 15],
                18,
                [[1, 2, 15],
                 [1, 8, 9],
                 [2, 7, 9],
                 [3, 6, 9],
                 [3, 7, 8],
                 [4, 5, 9],
                 [4, 6, 8],
                 [5, 6, 7]]
            )
        ].forEach { (arr, targetSum, expectedResult) in
            let s1 = ThreeSumDistinct.solution(input: arr, targetSum: targetSum)
            let s2 = ThreeSumDistinct.solution2(input: arr, targetSum: targetSum)
            expect(true, when: isSame2DArray(expectedResult, s1))
            expect(true, when: isSame2DArray(expectedResult, s2))
        }
    }
}
