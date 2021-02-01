//
//  SpiralMatrixTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-01-31.
//

import XCTest
@testable import Algorithms

class SpiralMatrixTest: XCTestCase {

    func test1() {
        let matrix = [
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9]
        ]

        expect([1, 2, 3, 6, 9, 8, 7, 4, 5],
               when: matrix)
    }

    func test2() {
        let matrix = [
            [1, 2, 3, 4],
            [5, 6, 7, 8],
            [9, 10, 11, 12]
        ]

        expect([1, 2, 3, 4, 8, 12, 11, 10, 9, 5, 6, 7],
               when: matrix)
    }

    func test3() {
        let matrix = [
            [27, 12, 35],
            [25, 21, 94],
            [19, 96, 43],
            [55, 36, 10]
        ]

        expect([27, 12, 35, 94, 43, 10, 36, 55, 19, 25, 21, 96],
               when: matrix)
    }

    func test4() {
        let matrix = [
            [1, 2],
            [3, 4]
        ]

        expect([1, 2, 4, 3],
               when: matrix)
    }

    func test5() {
        let matrix = [
            [1]
        ]

        expect([1],
               when: matrix)
    }

    private func expect(_ result: [Int], when input: [[Int]]) {
        let sut = SpiralMatrix.solution(input)
        XCTAssertEqual(sut, result)
    }
}
