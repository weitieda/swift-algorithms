//
//  CombinationsTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-27.
//

import XCTest
@testable import Algorithms

class CombinationsTest: XCTestCase {
    func test() {
        [
            (
                ["a", "b", "c"],
                [[], ["c"], ["b"], ["c", "b"], ["a"], ["c", "a"], ["b", "a"], ["c", "b", "a"]]
            ),
            (
                ["a", "b"],
                [[], ["b"], ["a"], ["b", "a"]]
            ),
            (
                ["a"],
                [[], ["a"]]
            ),
            (
                [String](),
                [[]]
            )
        ].forEach { (input, result) in
            expect(result, when: Combinations.solution(array: input))
        }
    }
}
