//
//  ProductOfArrayExcepSelfTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-04.
//

@testable import Algorithms
import XCTest

class ProductOfArrayExcepSelfTest: XCTestCase {
    func test() {
        [
            ([1, 2, 3, 4], [24, 12, 8, 6]),
        ].forEach { input, result in
            expect(result, when: ProductOfArrayExceptSelf.solution(array: input))
            expect(result, when: ProductOfArrayExceptSelf.solution2(array: input))
        }
    }
}
