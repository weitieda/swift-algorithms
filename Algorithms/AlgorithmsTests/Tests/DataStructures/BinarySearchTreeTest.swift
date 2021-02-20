//
//  BinarySearchTreeTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-17.
//

import XCTest
@testable import Algorithms

class BinarySearchTreeTest: XCTestCase {

    let tree2314 = """
                          ┌──4
                        ┌──3
                        │ └──nil
                        2
                        └──1

                        """

    func test_init() {
        let sut = BinarySearchTree<Int>()
        XCTAssertNil(sut.root)

        let sut2 = BinarySearchTree(array: [Int]())
        XCTAssertNil(sut2.root)
    }

    func test_initWithArray() {
        let sut = BinarySearchTree(array: [2, 3, 1, 4])
        XCTAssertEqual(tree2314, sut.description)
    }

    func test_searchEmptyTree() {
        let sut = BinarySearchTree<Int>()
        let node4 = sut.search(4)
        XCTAssertNil(node4)
    }

    func test_search() {
        let sut = makeSUT([2, 3, 1, 4])

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
        let sut = makeSUT([2, 3, 1, 4])

        XCTAssertTrue(sut.contains(2))
        XCTAssertTrue(sut.contains(3))
        XCTAssertTrue(sut.contains(1))
        XCTAssertTrue(sut.contains(4))
        XCTAssertFalse(sut.contains(5))
    }

    func test_remove() {
        let sut = makeSUT([2, 3, 1, 4])

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
        let sut = makeSUT([2, 3, 1, 4])

        let remove2 = sut.remove(2)
        XCTAssertTrue(remove2)

        XCTAssertEqual(3, sut.root?.value)
        XCTAssertEqual(4, sut.root?.right?.value)
        XCTAssertNil(sut.root?.right?.right?.value)
    }

    func test_description() {
        let sut = makeSUT([2, 3, 1, 4])
        XCTAssertEqual(tree2314, sut.description)
    }

    private func makeSUT(_ array: [Int]) -> BinarySearchTree<Int> {
        let sut = BinarySearchTree(array: array)
        return sut
    }
}
