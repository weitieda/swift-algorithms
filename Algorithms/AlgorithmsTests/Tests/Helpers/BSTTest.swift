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
        XCTAssertEqual(sut.max.value, 7)
        XCTAssertEqual(sut.min.value, 7)
        XCTAssertNil(sut.parent)
    }

    func test_initWithArray() {
        let sut = makeSUT()
        XCTAssertEqual(sut.value, 50)
        XCTAssertEqual(sut.right?.value, 70)
        XCTAssertEqual(sut.left?.value, 30)
        XCTAssertEqual(sut.left?.left?.value, 20)
        XCTAssertEqual(sut.right?.right?.right?.value, 85)
        XCTAssertEqual(sut.right?.right?.left?.value, 75)
        XCTAssertNil(sut.left?.left?.left)
    }

    func test_initWithEmptyArray() {
        let sut = BST(array: [Int]())
        XCTAssertNil(sut)
    }

    func test_contain() {
        let sut = makeSUT()
        XCTAssertTrue(sut.contains(50))
        XCTAssertTrue(sut.contains(70))
        XCTAssertFalse(sut.contains(0))
    }

    func test_min_max_value() {
        let sut = makeSUT()
        XCTAssertEqual(sut.max.value, 85)
        XCTAssertEqual(sut.min.value, 20)
    }

    func test_min_max_value_onlyRoot() {
        let sut = BST(array: [3])!
        XCTAssertEqual(sut.max.value, 3)
        XCTAssertEqual(sut.min.value, 3)
    }

    func test_search() {
        let sut = makeSUT().search(70)
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut?.parent?.value, 50)
    }

    func test_searchNotExist() {
        let sut = makeSUT().search(0)
        XCTAssertNil(sut)
    }

    func test_searchRecursive() {
        let sut = makeSUT().searchRecursively(70)
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut?.parent?.value, 50)
    }

    func test_searchRecursiveNotExist() {
        let sut = makeSUT().searchRecursively(0)
        XCTAssertNil(sut)
    }

    ///                       50
    ///                 30            70
    ///              20    40      60      80
    ///                   32         65   75 85
    ///                     34
    ///                       36
    private func makeSUT(_ array: [Int] = [50, 30, 20, 40, 32, 34, 36, 70, 60, 65, 80, 75, 85]) -> BST<Int> {
        let sut = BST(array: array)!
        return sut
    }
}
