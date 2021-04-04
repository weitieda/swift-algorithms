//
//  MergeIntervalsTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-04-03.
//

import XCTest
@testable import Algorithms

class MergeIntervalsTest: XCTestCase {

    func test() {
        [
            (
                [[1, 2]],
                [[1, 2]]
            ),

            (
                [[1, 3], [2, 6], [8, 10], [15, 18]],
                [[1, 6], [8, 10], [15, 18]]
            ),
            
            (
                [[2, 6], [1, 3], [8, 10], [15, 18]],
                [[1, 6], [8, 10], [15, 18]]
            )
        ].forEach { (input, result) in
            expect(result, when: MergeIntervals.solution(input))
        }
    }
}
