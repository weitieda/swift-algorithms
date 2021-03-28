//
//  SmallestDifferenceTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-01-29.
//

import XCTest
@testable import Algorithms

class SmallestDifferenceTest: XCTestCase {

    func test() {
        [
            ([-1, 5, 10, 20, 28, 3],
             [26, 134, 135, 15, 17],
             [26, 28]),
            ([240, 124, 86, 111, 2, 84, 954, 27, 89],
             [1, 3, 954, 19, 8],
             [954, 954])
        ].forEach { (a1, a2, result) in
            let isSameArr = isSameArrayIgnoreOrder(
                SmallestDifference.solution(arrayOne: a1, arrayTwo: a2),
                result
            )
            expect(true, when: isSameArr)
        }
    }
}
