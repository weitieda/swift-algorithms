//
//  BubbleSortTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-24.
//

import XCTest
@testable import Algorithms

class BubbleSortTest: XCTestCase {

    func test1() {
        var input = [2, 1, 0]
        let sut = BubbleSort.solution(array: &input)
        XCTAssertEqual([0, 1, 2], sut)
    }

    func test2() {
        var input = [2, 1]
        let sut = BubbleSort.solution(array: &input)
        XCTAssertEqual([1, 2], sut)
    }

    func test3() {
        var input = [2]
        let sut = BubbleSort.solution(array: &input)
        XCTAssertEqual([2], sut)
    }

    func test4() {
        var input = Array(0...100).shuffled()
        let sut = BubbleSort.solution(array: &input)
        XCTAssertEqual(Array(0...100), sut)
    }
}
