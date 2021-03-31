//
//  SubsetsTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-03-30.
//

import XCTest
@testable import Algorithms

class SubsetsTest: XCTestCase {

    func test() {
        [
            ([], [[]]),
            ([1], [[1], []]),
            ([1, 2], [[], [1], [2], [1, 2]]),
            ([1, 2, 3], [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]])
        ].forEach { (array, result) in
            let isSameArray = isSame2DArray(Subsets.solutionIterative(array: array), result)
            expect(true, when: isSameArray)
        }

    }
}
