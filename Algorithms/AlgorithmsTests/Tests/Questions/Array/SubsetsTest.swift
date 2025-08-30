//
//  SubsetsTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-03-30.
//

@testable import Algorithms
import XCTest

class SubsetsTest: XCTestCase {
    func test() {
        [
            ([], [[]]),
            ([1], [[1], []]),
            ([1, 2], [[], [1], [2], [1, 2]]),
            ([1, 2, 3], [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]),
        ].forEach { array, result in
            let solutionIterative = Subsets.solutionIterative(array: array)
            let isSameArray = isSame2DArray(solutionIterative, result)
            expect(true, when: isSameArray)

            let solutionRecursive = Subsets.solutionRecursive(array: array)
            let isSameArraySolutionRecursive = isSame2DArray(solutionRecursive, result)
            expect(true, when: isSameArraySolutionRecursive)
        }
    }
}
