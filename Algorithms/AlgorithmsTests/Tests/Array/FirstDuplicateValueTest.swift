//
//  FirstDuplicateValueTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-06.
//

import XCTest
@testable import Algorithms

class FirstDuplicateValueTest: XCTestCase {

    func test1() {
        var input = [2, 1, 5, 3, 3, 2, 4]
        let sut = FirstDuplicateValue.solution(array: &input)
        XCTAssertEqual(sut, 3)
    }

    func test2() {
        var input = [2, 1, 5, 2, 3, 3, 4]
        let sut = FirstDuplicateValue.solution(array: &input)
        XCTAssertEqual(sut, 2)
    }
    
    func test3() {
        var input = [2, 2, 5, 1, 3, 3, 4]
        let sut = FirstDuplicateValue.solution(array: &input)
        XCTAssertEqual(sut, 2)
    }
}
