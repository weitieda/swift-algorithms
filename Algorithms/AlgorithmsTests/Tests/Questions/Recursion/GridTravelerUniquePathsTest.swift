//
//  GridTravelerUniquePathsTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-28.
//

@testable import Algorithms
import XCTest

class GridTravelerUniquePathsTest: XCTestCase {
    func test() {
        [
            (3, 3, 6),
            (3, 7, 28),
            (18, 18, 2_333_606_220),
        ].forEach { m, n, result in
            expect(result, when: GridTravelerUniquePaths.solution(m, n))
        }
    }
}
