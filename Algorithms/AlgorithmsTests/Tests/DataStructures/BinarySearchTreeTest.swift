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
        let sut = BinarySearchTree(rootValue: 2)
        sut.root.value = 2
    }

    func test_addLeft() {
        let sut = BinarySearchTree(rootValue: 2)
        sut.add(1)

        XCTAssertNil(sut.root.right)
        XCTAssertEqual(1, sut.root.left?.value)
    }

    func test_addRight() {
        let sut = BinarySearchTree(rootValue: 2)
        sut.add(3)

        XCTAssertNil(sut.root.left)
        XCTAssertEqual(3, sut.root.right?.value)
    }

    func test_add() {
        let sut = BinarySearchTree(rootValue: 2)
        sut.add(3)
        sut.add(1)
        sut.add(4)

        let root = sut.root
        XCTAssertEqual(3, root.right?.value)
        XCTAssertEqual(4, root.right?.right?.value)
        XCTAssertEqual(1, root.left?.value)
        XCTAssertNil(root.left?.left)
        XCTAssertNil(root.left?.right)
    }
}
