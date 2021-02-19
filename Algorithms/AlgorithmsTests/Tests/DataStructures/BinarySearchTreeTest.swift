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
        let sut = makeSUT()

        let root = sut.root
        XCTAssertEqual(2, root?.value)
        XCTAssertEqual(3, root?.right?.value)
        XCTAssertEqual(4, root?.right?.right?.value)
        XCTAssertEqual(1, root?.left?.value)
        XCTAssertEqual(1, root?.min.value)
        XCTAssertNil(root?.left?.left)
        XCTAssertNil(root?.left?.right)
    }

    func test_searchEmptyTree() {
        let sut = BinarySearchTree<Int>()
        let node4 = sut.search(4)
        XCTAssertNil(node4)
    }

    func test_search() {
        let sut = makeSUT()

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
        XCTAssertEqual(4, node3?.right?.value)
        XCTAssertNil(node3?.left)

        XCTAssertNil(node6)
    }

    func test_contains() {
        let sut = makeSUT()

        XCTAssertTrue(sut.contains(2))
        XCTAssertTrue(sut.contains(3))
        XCTAssertTrue(sut.contains(1))
        XCTAssertTrue(sut.contains(4))
        XCTAssertFalse(sut.contains(5))
    }

    func test_remove() {
        let sut = makeSUT()

        let remove4 = sut.remove(4)
        let remove5 = sut.remove(5)
        let remove1 = sut.remove(1)

        XCTAssertTrue(remove4)
        XCTAssertFalse(remove5)
        XCTAssertTrue(remove1)

        XCTAssertNil(sut.root?.right?.right)
        XCTAssertNil(sut.root?.left)
    }

    func test_removeTwoChildren() {
        let sut = makeSUT()

        let remove2 = sut.remove(2)
        XCTAssertTrue(remove2)

        XCTAssertEqual(3, sut.root?.value)
        XCTAssertEqual(4, sut.root?.right?.value)
        XCTAssertEqual(4, sut.root?.right?.right?.value)
//        XCTAssertNil(sut.root?.value)
//        XCTAssertNil(sut.root?.left)
    }

    ///      2
    ///    1   3
    ///          4
    private func makeSUT() -> BinarySearchTree<Int> {
        let sut = BinarySearchTree(rootValue: 2)
        sut.insert(3)
        sut.insert(1)
        sut.insert(4)
        return sut
    }
}
