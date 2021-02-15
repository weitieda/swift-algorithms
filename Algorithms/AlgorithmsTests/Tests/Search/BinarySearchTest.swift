//
//  BinarySearchTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-15.
//

import XCTest
@testable import Algorithms

class BinarySearchTest: XCTestCase {

    func test() {
        expect(nil, input: [], target: 1)
        expect(nil, input: [2], target: 1)
        expect(0, input: [2], target: 2)

        expect(1, input: [1, 2], target: 2)
        expect(nil, input: [1, 2], target: 3)

        expect(0, input: [1, 2, 4], target: 1)
        expect(2, input: [1, 2, 4], target: 4)

        expect(1, input: [1, 2, 3, 4], target: 2)
        expect(3, input: [1, 2, 3, 4], target: 4)

        expect(3, input: [1, 2, 3, 4, 5], target: 4)
        expect(4, input: [1, 2, 3, 4, 5], target: 5)
        expect(0, input: [1, 2, 3, 4, 5], target: 1)
    }

    private func expect(_ result: Int?, input: [Int], target: Int) {
        let sut = BinarySearch.solution(input: input,
                                        target: target)
        XCTAssertEqual(result, sut)
    }
}
