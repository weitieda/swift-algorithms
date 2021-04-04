//
//  MonotonicArrayTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-01-30.
//

import XCTest
@testable import Algorithms

class MonotonicArrayTest: XCTestCase {

    func test() {
        [
            [1, 1, 2, 2],
            [1, 1, 1],
            [5, 4, 4],
            [1, 2, 2, 5]
        ].forEach { array in
            expect(true, when: MonotonicArray.solution(array))
            expect(true, when: MonotonicArray.solution2(array))
        }

        [
            [1, 0, 2, 2],
            [1, 0, 1],
            [0, 1, 0],
            [1, 2, 2, 1]
        ].forEach { array in
            expect(false, when: MonotonicArray.solution(array))
            expect(false, when: MonotonicArray.solution2(array))
        }
    }
}
