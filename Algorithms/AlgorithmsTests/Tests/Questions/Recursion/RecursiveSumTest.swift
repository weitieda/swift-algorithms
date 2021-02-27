//
//  RecursiveSumTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-26.
//

import XCTest
@testable import Algorithms

class RecursiveSumTest: XCTestCase {

    func test() {
        expect(sum: 0, when: [])
        expect(sum: 1, when: [1])
        expect(sum: 3, when: [1, 2])
        expect(sum: 2, when: [1, 2, -1])
    }

    private func expect(sum: Int, when array: [Int]) {
        let sut = RecursiveSum.sum(array: array)
        XCTAssertEqual(sut, sum)

        let sut2 = RecursiveSum.sumRunningIndex(array: array)
        XCTAssertEqual(sut2, sum)

        let sut3 = RecursiveSum.sum2(array: array)
        XCTAssertEqual(sut3, sum)
    }
}
