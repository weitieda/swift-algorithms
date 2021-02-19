//
//  BinarySearchTreeTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-17.
//

import XCTest
@testable import Algorithms

class BinarySearchTreeTest: XCTestCase {

    func test_init() {
        let sut = BinarySearchTree<Int>()
        XCTAssertNil(sut.root)
    }

    func test_insert() {
        let sut = BinarySearchTree(rootValue: 2)
        sut.insert(3)
        sut.insert(1)
        sut.insert(4)

        let root = sut.root
        XCTAssertEqual(2, root?.value)
        XCTAssertEqual(3, root?.right?.value)
        XCTAssertEqual(4, root?.right?.right?.value)
        XCTAssertEqual(1, root?.left?.value)
        XCTAssertNil(root?.left?.left)
        XCTAssertNil(root?.left?.right)
    }

    func test_searchEmptyTree() {
        let sut = BinarySearchTree<Int>()
        let node4 = sut.search(4)
        XCTAssertNil(node4)
    }

    func test_search() {
        let sut = BinarySearchTree(rootValue: 2)
        sut.insert(3)
        sut.insert(1)
        sut.insert(4)

        let node1 = sut.search(1)
        let node2 = sut.search(2)
        let node3 = sut.search(3)
        let node4 = sut.search(4)

        let node6 = sut.search(6)

        XCTAssertNotNil(node1)
        XCTAssertNotNil(node2)
        XCTAssertNotNil(node3)
        XCTAssertNotNil(node4)
        XCTAssertEqual(1, node1?.value)

        XCTAssertNil(node6)
    }
}
