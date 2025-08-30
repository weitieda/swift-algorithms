//
//  SpiralMatrixTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-01-31.
//

@testable import Algorithms
import XCTest

class SpiralMatrixTest: XCTestCase {
    func test() {
        [
            ([
                [1, 2, 3],
                [4, 5, 6],
                [7, 8, 9],
            ], [1, 2, 3, 6, 9, 8, 7, 4, 5]),

            ([
                [1, 2, 3, 4],
                [5, 6, 7, 8],
                [9, 10, 11, 12],
            ], [1, 2, 3, 4, 8, 12, 11, 10, 9, 5, 6, 7]),

            ([
                [27, 12, 35],
                [25, 21, 94],
                [19, 96, 43],
                [55, 36, 10],
            ], [27, 12, 35, 94, 43, 10, 36, 55, 19, 25, 21, 96]),

            ([
                [1, 2],
                [3, 4],
            ], [1, 2, 4, 3]),

            ([
                [1],
            ], [1]),
        ].forEach { input, result in
            expect(result, when: SpiralMatrix.solution(input))
        }
    }
}
