//
//  ProductSumTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-16.
//

import XCTest
@testable import Algorithms

class ProductSumTest: XCTestCase {

    func test() {
        [
            ([5, 2, [7, -1], 3, [6, [-13, 8], 4]], 12),
            ([5, 2], 7),
            ([1, [1, -1]], 1)
        ].forEach { (array, result) in
            expect(result, when: ProductSum.solution(array))
        }
    }

}
