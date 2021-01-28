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
        let seq = [1, 6, -1, 10]
        
        XCTAssertTrue(ValidateSubsequence.solution(input: input, sequence: seq))
        XCTAssertTrue(ValidateSubsequence.solution2(input: input, sequence: seq))
    }
    
    func test2() {
        let input = [1]
        let seq = [1]
        
        XCTAssertTrue(ValidateSubsequence.solution(input: input, sequence: seq))
        XCTAssertTrue(ValidateSubsequence.solution2(input: input, sequence: seq))
    }
    
    func test3() {
        let input = [1, 2, 3]
        let seq = [3, 4]
        
        XCTAssertFalse(ValidateSubsequence.solution(input: input, sequence: seq))
        XCTAssertFalse(ValidateSubsequence.solution2(input: input, sequence: seq))
    }
}

