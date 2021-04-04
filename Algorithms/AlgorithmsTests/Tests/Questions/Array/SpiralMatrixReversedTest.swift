//
//  SpiralMatrixReversedTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-01.
//

import XCTest
@testable import Algorithms

class SpiralMatrixReversedTest: XCTestCase {

    func test() {
        [
            ([[1, 2, 3],
              [8, 9, 4],
              [7, 6, 5]],
             3),

            ([[1, 2],
              [4, 3]],
             2),

            ([[1, 2, 3, 4],
              [12, 13, 14, 5],
              [11, 16, 15, 6],
              [10, 9, 8, 7]],
             4)
        ].forEach { (result, n) in
            expect(result, when: SpiralMatrixReversed.solution(n))
        }
    }
}
