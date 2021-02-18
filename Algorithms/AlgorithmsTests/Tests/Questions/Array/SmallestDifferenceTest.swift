//
//  SmallestDifferenceTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-01-29.
//

import XCTest
@testable import Algorithms

class SmallestDifferenceTest: XCTestCase {

    func test1() {
        var arr1 = [-1, 5, 10, 20, 28, 3]
        var arr2 = [26, 134, 135, 15, 17]

        let exp = [28, 26]

        let sut = SmallestDifference.solution(arrayOne: &arr1, arrayTwo: &arr2)

        XCTAssertEqual(sut.sorted(), exp.sorted())
    }

    func test2() {
        var arr1 = [240, 124, 86, 111, 2, 84, 954, 27, 89]
        var arr2 = [1, 3, 954, 19, 8]

        let exp = [954, 954]

        let sut = SmallestDifference.solution(arrayOne: &arr1, arrayTwo: &arr2)

        XCTAssertEqual(sut.sorted(), exp.sorted())
    }
}
