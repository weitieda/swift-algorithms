//
//  LinkedListTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-06.
//

import XCTest
@testable import Algorithms

class LinkedListTest: XCTestCase {

    func test_init() {
        let list = LinkedList<Int>()

        XCTAssertNil(list.head)
    }

    func test_headNode() {
        let node = LinkedList<Int>.Node(value: 1)
        let list = LinkedList<Int>()
        list.append(node)

        XCTAssertNotNil(list.head)
        XCTAssertEqual(1, list.head!.value)
        XCTAssertNil(list.head?.next)
    }

    func test_twoNodes() {
        let firstNode = LinkedList<Int>.Node(value: 1)
        let secondNode = LinkedList<Int>.Node(value: 2)

        let list = LinkedList<Int>()
        list.append(firstNode)
        list.append(secondNode)

        XCTAssertEqual(1, list.head?.value)
        XCTAssertEqual(2, list.head?.next?.value)
        XCTAssertNil(list.head?.next?.next)
    }

    func test_initWithEmptyArray() {
        let list = LinkedList(array: [Int]())

        XCTAssertNil(list.head)
        XCTAssertEqual(list.description, "[]")
    }

    func test_initWithNonEmptyArray() {
        let list = LinkedList(array: [1, 2, 3])

        XCTAssertEqual(1, list.head?.value)
        XCTAssertEqual(2, list.head?.next?.value)
        XCTAssertEqual(3, list.head?.next?.next?.value)
        XCTAssertNil(list.head?.next?.next?.next?.next)
    }

    func test_description() {
        let array = [1, 2, 3]
        let list = LinkedList(array: array)
        let toArray = list.description

        XCTAssertEqual(toArray, "[1, 2, 3]")
    }
}
