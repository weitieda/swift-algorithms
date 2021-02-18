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
        let matrix = [[1, 2, 3],
                      [8, 9, 4],
                      [7, 6, 5]]

        expect(matrix, n: 3)
    }

    func test2() {
        let matrix = [[1, 2],
                      [4, 3]]

        expect(matrix, n: 2)
    }

    func test3() {
        let matrix = [[1, 2, 3, 4],
                      [12, 13, 14, 5],
                      [11, 16, 15, 6],
                      [10, 9, 8, 7]]

        expect(matrix, n: 4)
    }

    private func expect(_ result: [[Int]], n: Int) {
        let sut = SpiralMatrixReversed.solution(n)
        XCTAssertEqual(sut, result)
    }
}
