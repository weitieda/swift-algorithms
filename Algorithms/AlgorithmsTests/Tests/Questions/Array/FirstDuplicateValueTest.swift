//
//  FirstDuplicateValueTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-06.
//

import XCTest
@testable import Algorithms

class FirstDuplicateValueTest: XCTestCase {

    func test() {
        [
            ([2, 1, 5, 3, 3, 2, 4], 3),
            ([2, 1, 5, 2, 3, 3, 4], 2),
            ([2, 2, 5, 1, 3, 3, 4], 2),
            ([1, 2, 3], -1)
        ].forEach { (input, result) in
            expect(result, when: FirstDuplicateValue.solution(array: input))
        }
    }
}
