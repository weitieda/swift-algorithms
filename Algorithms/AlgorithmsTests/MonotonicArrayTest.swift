//
//  MonotonicArrayTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-01-30.
//

import XCTest
@testable import Algorithms

class MonotonicArrayTest: XCTestCase {

    func test1() {
        let monotoneIncreasingArrays = [
            [1, 1, 2, 2],
            [1, 1, 1],
            [5, 4, 4],
            [1, 2, 2, 5]
        ]
        monotoneIncreasingArrays.forEach {
            expect($0, true)
        }

        let monotoneDecreasingArrays = [
            [1, 0, 2, 2],
            [1, 0, 1],
            [0, 1, 0],
            [1, 2, 2, 1]
        ]
        monotoneDecreasingArrays.forEach {
            expect($0, false)
        }
    }
    
    private func expect(_ input: [Int], _ isTrue: Bool) {
        if isTrue {
            XCTAssertTrue(MonotonicArray.solution(input))
            XCTAssertTrue(MonotonicArray.solution2(input))
        } else {
            XCTAssertFalse(MonotonicArray.solution(input))
            XCTAssertFalse(MonotonicArray.solution2(input))
        }
    }
}
