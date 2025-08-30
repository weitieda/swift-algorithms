//
//  PermutationTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-27.
//

@testable import Algorithms
import XCTest

class PermutationTest: XCTestCase {
    func test() {
        [
            (
                [1, 2],
                [
                    [1, 2],
                    [2, 1],
                ]
            ),
            (
                [1, 2, 3],
                [
                    [1, 2, 3],
                    [1, 3, 2],
                    [2, 1, 3],
                    [2, 3, 1],
                    [3, 1, 2],
                    [3, 2, 1],
                ]
            ),
        ].forEach { array, result in
            let isSameSolution1 = isSame2DArray(result, Permutation.solution(array))
            expect(true, when: isSameSolution1)

            let isSameSolution2 = isSame2DArray(result, Permutation.solution2(array))
            expect(true, when: isSameSolution2)
        }
    }
}
