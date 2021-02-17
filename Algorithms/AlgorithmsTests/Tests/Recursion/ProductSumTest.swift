//
//  ProductSumTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-16.
//

import XCTest
@testable import Algorithms

class ProductSumTest: XCTestCase {

    func test1() {
        let array: [Any] = [5, 2, [7, -1], 3, [6, [-13, 8], 4]]
        let sut = ProductSum.solution(array)

        XCTAssertEqual(12, sut)
    }

}
