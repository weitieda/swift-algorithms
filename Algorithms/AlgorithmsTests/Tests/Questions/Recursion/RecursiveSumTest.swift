//
//  RecursiveSumTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-26.
//

import XCTest
@testable import Algorithms

class RecursiveSumTest: XCTestCase {

    func test() {
        [
            ([], 0),
            ([1], 1),
            ([1, 2], 3),
            ([1, 2, -1], 2)
        ].forEach { (array, result) in
            expect(result, when: RecursiveSum.sum(array: array))
            expect(result, when: RecursiveSum.sumRunningIndex(array: array))
            expect(result, when: RecursiveSum.sum2(array: array))
        }
    }
}
