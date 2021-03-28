//
//  ValidateSubsequenceTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-01-27.
//

import XCTest
@testable import Algorithms

class ValidateSubsequenceTest: XCTestCase {
    
    func test() {
        [
            ([5, 1, 22, 25, 6, -1, 8, 10], [1, 6, -1, 10], true),
            ([1, 6, -1, 10], [1], true),
            ([1, 2, 3], [3, 4], false)
        ].forEach { (array, seq, result) in
            expect(result, when: ValidateSubsequence.solution(input: array, sequence: seq))
            expect(result, when: ValidateSubsequence.solution2(input: array, sequence: seq))
        }
    }
}
