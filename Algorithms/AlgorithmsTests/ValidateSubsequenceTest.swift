//
//  ValidateSubsequenceTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-01-27.
//

import XCTest
@testable import Algorithms

class ValidateSubsequenceTest: XCTestCase {
    
    func test1() {
        let input = [5, 1, 22, 25, 6, -1, 8, 10]
        XCTAssertTrue(ValidateSubsequence.solution(input: input, sequence: [1, 6, -1, 10]))
        XCTAssertTrue(ValidateSubsequence.solution2(input: input, sequence: [1, 6, -1, 10]))
    }
    
    func test2() {
        let input = [1]
        XCTAssertTrue(ValidateSubsequence.solution(input: input, sequence: [1]))
        XCTAssertTrue(ValidateSubsequence.solution2(input: input, sequence: [1]))
    }
    
    func test3() {
        let input = [1, 2, 3]
        XCTAssertFalse(ValidateSubsequence.solution(input: input, sequence: [3, 4]))
        XCTAssertFalse(ValidateSubsequence.solution2(input: input, sequence: [3, 4]))
    }
}

