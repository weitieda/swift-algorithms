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

        XCTAssertNil(sut.peek())
        XCTAssertEqual(sut.count, 0)
    }

    func test_initWithArray() {
        let sut = makeHeap(.max, [1, 2, 3, 0])

        XCTAssertEqual(sut.count, 4)
        XCTAssertEqual(sut.peek(), 3)
    }

    func test_clear() {
        var sut = makeHeap(.max, [1, 2, 3, 0])
        sut.clear()

        XCTAssertTrue(sut.isEmpty)
    }

    func test_addInMinHeap() {
        var sut = makeHeap(.min, [2])
        XCTAssertEqual(sut.peek(), 2)

        sut.add(1)
        XCTAssertEqual(sut.peek(), 1)

        sut.add(3)
        XCTAssertEqual(sut.peek(), 1)

        sut.add(0)
        XCTAssertEqual(sut.peek(), 0)
    }

    func test_poll() {

        ///            1
        ///         2     3
        ///       5  7   9
        var sut = makeHeap(.min, [2, 1, 3, 5, 7, 9])

        let poll1 = sut.poll()
        XCTAssertEqual(poll1, 1)
        XCTAssertEqual(sut.count, 5)
        XCTAssertEqual(sut.peek(), 2)

        let poll2 = sut.poll()
        XCTAssertEqual(poll2, 2)
        XCTAssertEqual(sut.count, 4)
        XCTAssertEqual(sut.peek(), 3)
    }

    func test_remove() {
        var sut = makeHeap(.min, [3, 1, 2, 4, 5])

        XCTAssertFalse(sut.remove(99))

        XCTAssertTrue(sut.remove(1))
        XCTAssertEqual(sut.count, 4)
        XCTAssertEqual(sut.peek(), 2)

        XCTAssertTrue(sut.remove(5))
        XCTAssertEqual(sut.count, 3)
        XCTAssertEqual(sut.peek(), 2)

        XCTAssertTrue(sut.remove(2))
        XCTAssertEqual(sut.peek(), 3)
    }

    func test_pollWithDuplicates() {
        var sut = makeHeap(.min, [3, 1, 1, 1, 5])
        XCTAssertEqual(sut.peek(), 1)

        let p0 = sut.poll()
        XCTAssertEqual(p0, 1)
        XCTAssertEqual(sut.peek(), 1)

        let p1 = sut.poll()
        XCTAssertEqual(p1, 1)
        XCTAssertEqual(sut.peek(), 1)

        let p2 = sut.poll()
        XCTAssertEqual(p2, 1)
        XCTAssertEqual(sut.peek(), 3)

        let p3 = sut.poll()
        XCTAssertEqual(p3, 3)
        XCTAssertEqual(sut.peek(), 5)

        _ = sut.poll()
        XCTAssertEqual(sut.peek(), nil)

        let p = sut.poll()
        XCTAssertEqual(p, nil)
    }

    private func makeHeap(_ type: BinaryHeap<Int>.HeapType = .min,
                          _ elements: [Int] = []) -> BinaryHeap<Int> {
        BinaryHeap(type: type, elements: elements)
    }
}
