//
//  FindDuplicateNumberTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-05.
//

import XCTest
@testable import Algorithms

class FindDuplicateNumberTest: XCTestCase {

    func test1() {
        let array = [1, 3, 4, 2, 2]
        let sut = FindDuplicateNumber.solution(array: array)

        XCTAssertEqual(sut, 2)
    }

    func test2() {
        let array = [1, 2, 2, 3, 4]
        let sut = FindDuplicateNumber.solution(array: array)

        XCTAssertEqual(sut, 2)
    }

    func test3() {

    }
}
