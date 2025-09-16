//
//  QueueUsingStackTest.swift
//  Algorithms
//
//  Created by Tieda Wei on 2025-09-15.
//

import Algorithms
import XCTest

class QueueUsingStackTest: XCTestCase {
    func test_enqueue_dequeue() {
        let sut = QueueUsingStack()
        sut.enqueue(1)
        sut.enqueue(2)
        XCTAssertEqual(sut.dequeue(), 1)
    }

    func test_longEnqueueThenDequeue() {
        let sut = QueueUsingStack()
        sut.enqueue(1)
        sut.enqueue(2)
        sut.enqueue(3)
        sut.enqueue(4)
        sut.enqueue(5)
        sut.enqueue(6)

        XCTAssertEqual(sut.dequeue(), 1)
        XCTAssertEqual(sut.dequeue(), 2)
        XCTAssertEqual(sut.dequeue(), 3)
        XCTAssertEqual(sut.dequeue(), 4)
        XCTAssertEqual(sut.dequeue(), 5)
        XCTAssertEqual(sut.dequeue(), 6)
    }

    func test_peek() {
        let sut = QueueUsingStack()
        sut.enqueue(1)
        sut.enqueue(2)

        XCTAssertEqual(sut.peek(), 1)
        XCTAssertEqual(sut.peek(), 1)
    }

    func test_dequeueThenEnqueue() {
        let sut = QueueUsingStack()
        sut.enqueue(1)
        sut.enqueue(2)
        sut.enqueue(3)
        sut.enqueue(4)

        XCTAssertEqual(sut.dequeue(), 1)

        sut.enqueue(5)

        XCTAssertEqual(sut.dequeue(), 2)
        XCTAssertEqual(sut.dequeue(), 3)
        XCTAssertEqual(sut.dequeue(), 4)
        XCTAssertEqual(sut.dequeue(), 5)
    }

    func test_mixedOperations() {
        let sut = QueueUsingStack()
        sut.enqueue(1)
        sut.enqueue(2)
        XCTAssertEqual(sut.peek(), 1)
        XCTAssertEqual(sut.peek(), 1)
        sut.enqueue(3)
        XCTAssertEqual(sut.peek(), 1)
        sut.enqueue(4)

        XCTAssertEqual(sut.peek(), 1)
        XCTAssertEqual(sut.dequeue(), 1)

        sut.enqueue(5)
        XCTAssertEqual(sut.peek(), 2)

        XCTAssertEqual(sut.dequeue(), 2)
        XCTAssertEqual(sut.dequeue(), 3)
        XCTAssertEqual(sut.dequeue(), 4)
        XCTAssertEqual(sut.dequeue(), 5)

        sut.enqueue(6)
        sut.enqueue(7)
        sut.enqueue(8)
        XCTAssertEqual(sut.peek(), 6)

        XCTAssertEqual(sut.dequeue(), 6)
    }
}
