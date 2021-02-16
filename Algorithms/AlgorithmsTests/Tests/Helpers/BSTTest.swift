//
//  BSTTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-15.
//

import XCTest
@testable import Algorithms

class BSTTest: XCTestCase {

    func test_init() {
        let sut = BST(value: 7)
        XCTAssertEqual(sut.value, 7)
    }

    func test_insertLeft() {
        let sut = BST(value: 7)
        sut.insert(6)
        XCTAssertEqual(sut.left?.value, 6)
        XCTAssertNil(sut.right)
    }

    func test_insertRightEqual() {
        let sut = BST(value: 7)
        sut.insert(7)
        XCTAssertEqual(sut.right?.value, 7)
        XCTAssertNil(sut.left)
    }

    func test_insertRightLarger() {
        let sut = BST(value: 7)
        sut.insert(8)
        XCTAssertEqual(sut.right?.value, 8)
        XCTAssertNil(sut.left)
    }

    func test_initWithArray() {
        let sut = BST(array: [4, 5, 3, 2])!

        XCTAssertEqual(sut.value, 4)
        XCTAssertEqual(sut.right?.value, 5)
        XCTAssertEqual(sut.left?.value, 3)
        XCTAssertEqual(sut.left?.left?.value, 2)
        XCTAssertNil(sut.left?.right)
    }

    func test_initWithEmptyArray() {
        let sut = BST(array: [Int]())
        XCTAssertNil(sut)
    }
}
