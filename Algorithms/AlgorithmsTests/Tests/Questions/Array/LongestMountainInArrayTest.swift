//
//  LongestMountainInArrayTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-02.
//

@testable import Algorithms
import XCTest

class LongestMountainInArrayTest: XCTestCase {
    func test() {
        [
            ([2, 1, 4, 7, 3, 2, 5], 5),
            ([0, 0, 0], 0),
            ([1, 2, 3, 3, 4, 0, 10], 3),
        ].forEach { input, result in
            expect(result, when: LongestMountainInArray.solution(input))
        }
    }
}
