//
//  SpiralMatrixReversedTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-01.
//

import XCTest
@testable import Algorithms

class SpiralMatrixReversedTest: XCTestCase {

    func test1() {
        let matrix = [
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9]
        ]

        let input = [1, 2, 3, 6, 9, 8, 7, 4, 5]

        expect(matrix,
               when: input)
    }

    func test2() {
        let matrix = [
            [1, 2, 3, 4],
            [5, 6, 7, 8],
            [9, 10, 11, 12]
        ]

        let input = [1, 2, 3, 4, 8, 12, 11, 10, 9, 5, 6, 7]

        expect(matrix,
               when: input)
    }

    func test3() {
        let matrix = [
            [27, 12, 35],
            [25, 21, 94],
            [19, 96, 43],
            [55, 36, 10]
        ]

        let input = [27, 12, 35, 94, 43, 10, 36, 55, 19, 25, 21, 96]

        expect(matrix,
               when: input)
    }

    func test4() {
        let matrix = [
            [1, 2],
            [3, 4]
        ]

        let input = [1, 2, 4, 3]

        expect(matrix,
               when: input)
    }

    func test5() {
        let input = [1]

        expect([[1]],
               when: input)
    }

    private func expect(_ result: [[Int]], when input: [Int]) {
        let sut = SpiralMatrixReversed.solution(input)
        XCTAssertEqual(sut, result)
    }
}
