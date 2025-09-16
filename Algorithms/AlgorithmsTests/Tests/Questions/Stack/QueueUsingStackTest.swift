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

    func test_peek() {
//        let sut = QueueUsingStack()
//        sut.enqueue(1)
//        sut.enqueue(2)
//
//        XCTAssertEqual(sut.peek(), 1)
    }

    func test_peek_remainSize() {}
}
