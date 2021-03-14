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
        let result = [[1, 2], [2, 1]]
        expect(result, when: [1, 2])
    }

    func test2() {
        let result = [
            [1, 2, 3],
            [1, 3, 2],
            [2, 1, 3],
            [2, 3, 1],
            [3, 1, 2],
            [3, 2, 1]
        ]
        expect(result, when: [1, 2, 3])
    }
    
    private func expect(_ result: [[Int]], when input: [Int]) {
        let sut = Permutation.solution(input)
        XCTAssertTrue(isSame2DArray(sut, result))

        let sut2 = Permutation.solution2(input)
        XCTAssertTrue(isSame2DArray(sut2, result))
    }
}
