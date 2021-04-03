//
//  CombinationSumTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-03-07.
//

import XCTest
@testable import Algorithms

class CombinationSumTest: XCTestCase {
    
    func test() {
        [
            (
                [7, 14], 300,
                [[Int]]()
            ),
            
            (
                [2, 3], 7,
                [
                    [2, 3, 2]
                ]
            ),
            
            (
                [5, 3, 4, 7], 7,
                [
                    [3, 4],
                    [7]
                ]
            ),
            
            (
                [5, 2, 3, 10], 10,
                [
                    [5, 5],
                    [5, 2, 3],
                    [10],
                    [2, 2, 2, 2, 2],
                    [2, 2, 3, 3]
                ]
            )
        ].forEach { (input, target, result) in
            let isSameArray = isSame2DArray(result, CombinationSum.solution(input: input, target: target))
            expect(true, when: isSameArray)
        }
    }
}
