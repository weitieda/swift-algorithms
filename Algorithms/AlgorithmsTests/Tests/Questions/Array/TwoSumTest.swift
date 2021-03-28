//
//  TwoSumTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-01-27.
//

import XCTest
@testable import Algorithms

class TwoSumTest: XCTestCase {

    func test() {
        [
            ([3, 5, -4, 8, 11, 1, -1, 6], 10, [6, 4]),
            ([4, 6, 1, -3], 11, [])
        ].forEach { (array, target, result) in
            expect(result, when: TwoSum.solution(input: array, target: target))
        }
    }
}
