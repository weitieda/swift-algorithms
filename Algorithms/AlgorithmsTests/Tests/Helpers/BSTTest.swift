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

    func test_contain() {
        let sut = BST(array: [3, 1, 2, 4])!
        XCTAssertTrue(sut.contains(1))
        XCTAssertTrue(sut.contains(2))
        XCTAssertTrue(sut.contains(4))
        XCTAssertTrue(sut.contains(3))
        
        XCTAssertFalse(sut.contains(5))
    }

    func test_min_max_value() {
        let sut = BST(array: [3, 1, 2, 4])!

        XCTAssertEqual(sut.maxValue, 4)
        XCTAssertEqual(sut.minValue, 1)
    }

    func test_min_max_value_onlyRoot() {
        let sut = BST(array: [3])!

        XCTAssertEqual(sut.maxValue, 3)
        XCTAssertEqual(sut.minValue, 3)
    }
}
