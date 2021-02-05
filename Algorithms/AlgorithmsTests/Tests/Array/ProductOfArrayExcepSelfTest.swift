//
//  ProductOfArrayExcepSelf.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-04.
//

import XCTest
@testable import Algorithms

class ProductOfArrayExcepSelfTest: XCTestCase {

    func test1() {
        let input = [1, 2, 3, 4]
        let sut = ProductOfArrayExcepSelf.solution(array: input)
        XCTAssertEqual([24, 12, 8, 6], sut)
    }

    func test2() {
        let input = [1, 2, 3, 4]
        let sut = ProductOfArrayExcepSelf.solution2(array: input)
        XCTAssertEqual([24, 12, 8, 6], sut)
    }

    func test3() {

    }
}
