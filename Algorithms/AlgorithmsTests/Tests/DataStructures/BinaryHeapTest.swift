//
//  BinaryHeapTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-20.
//

import XCTest
@testable import Algorithms

class BinaryHeapTest: XCTestCase {

    func test_emptyMinHeap() {
        let sut = makeHeap()

        XCTAssertNil(sut.highestPriorityElement)
        XCTAssertEqual(sut.count, 0)
    }

    func test_initWithArray() {
        let sut = makeHeap(.max, [1, 2, 3, 0])

        XCTAssertEqual(sut.count, 4)
        XCTAssertEqual(sut.highestPriorityElement, 3)
    }

    func test_addInMinHeap() {
        var sut = makeHeap(.min, [2])
        XCTAssertEqual(sut.highestPriorityElement, 2)

        sut.add(1)
        XCTAssertEqual(sut.highestPriorityElement, 1)

        sut.add(3)
        XCTAssertEqual(sut.highestPriorityElement, 1)

        sut.add(0)
        XCTAssertEqual(sut.highestPriorityElement, 0)
    }

    func test3() {

    }

    private func makeHeap(_ type: BinaryHeap<Int>.HeapType = .min,
                          _ elements: [Int] = []) -> BinaryHeap<Int> {
        BinaryHeap(type: type, elements: elements)
    }
}
