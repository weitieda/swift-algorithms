//
//  ProductOfArrayExcepSelf.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-04.
//

import XCTest
@testable import Algorithms

class ProductOfArrayExcepSelfTest: XCTestCase {

    func test() {
        [
            ([1, 2, 3, 4], [24, 12, 8, 6])
        ].forEach { (input, result) in
            expect(result, when: ProductOfArrayExceptSelf.solution(array: input))
            expect(result, when: ProductOfArrayExceptSelf.solution2(array: input))
        }
    }
}
