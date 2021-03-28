//
//  BubbleSortTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-24.
//

import XCTest
@testable import Algorithms

class BubbleSortTest: XCTestCase {

    func test() {
        [
            ([], []),
            ([0], [0]),
            ([2, 1], [1, 2]),
            ([2, 1, 0], [0, 1, 2]),
            (Array(0...100).shuffled(), Array(0...100))
        ].forEach { (arr, sorted) in
            expect(sorted, when: BubbleSort.solution(array: arr))
        }
    }
}
