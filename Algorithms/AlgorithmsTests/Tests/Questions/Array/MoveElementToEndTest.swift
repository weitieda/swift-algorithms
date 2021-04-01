//
//  MoveElementToEndTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-01-29.
//

import XCTest
@testable import Algorithms

class MoveElementToEndTest: XCTestCase {

    func test() {
        [
            ([2, 1, 2, 2, 2, 3, 4, 2], 2, [4, 1, 3, 2, 2, 2, 2, 2]),
            ([1, 2, 2, 2, 3, 4, 2], 4, [1, 2, 2, 2, 3, 2, 4]),
            ([3, 3, 3, 2, 2, 2], 3, [2, 2, 2, 3, 3, 3])
        ].forEach { (input, toMove, result) in
            expect(result, when: MoveElementToEnd.solution(input, toMove))
        }
    }
}
