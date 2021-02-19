//
//  BSTTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-15.
//

import XCTest
@testable import Algorithms

class BSTTest: XCTestCase {
//
//    func test_init() {
//        let sut = BST(value: 7)
//        XCTAssertEqual(sut.value, 7)
//        XCTAssertEqual(sut.max.value, 7)
//        XCTAssertEqual(sut.min.value, 7)
//    }
//
//    func test_initWithArray() {
//        let sut = makeSUT()
//        XCTAssertEqual(sut.value, 50)
//        XCTAssertEqual(sut.right?.value, 70)
//        XCTAssertEqual(sut.left?.value, 30)
//        XCTAssertEqual(sut.left?.left?.value, 20)
//        XCTAssertEqual(sut.right?.right?.right?.value, 85)
//        XCTAssertEqual(sut.right?.right?.left?.value, 75)
//        XCTAssertNil(sut.left?.left?.left)
//    }
//
//    func test_initWithEmptyArray() {
//        let sut = BST(array: [Int]())
//        XCTAssertNil(sut)
//    }
//
//    func test_contain() {
//        let sut = makeSUT()
//        XCTAssertTrue(sut.contains(50))
//        XCTAssertTrue(sut.contains(70))
//        XCTAssertFalse(sut.contains(0))
//    }
//
//    func test_min_max_value() {
//        let sut = makeSUT()
//        XCTAssertEqual(sut.max.value, 85)
//        XCTAssertEqual(sut.min.value, 20)
//    }
//
//    func test_min_max_value_onlyRoot() {
//        let sut = BST(array: [3])!
//        XCTAssertEqual(sut.max.value, 3)
//        XCTAssertEqual(sut.min.value, 3)
//    }
//
//    func test_search() {
//        let node = makeSUT().search(70)
//        XCTAssertNotNil(node)
//    }
//
//    func test_searchNotExist() {
//        let node = makeSUT().search(0)
//        XCTAssertNil(node)
//    }
//
//    func test_searchRecursive() {
//        let node = makeSUT().searchRecursively(70)
//        XCTAssertNotNil(node)
//    }
//
//    func test_searchRecursiveNotExist() {
//        let node = makeSUT().searchRecursively(0)
//        XCTAssertNil(node)
//    }

//    func test_deleteLeftLeaf() {
//        let sut = makeSUT()
//        sut.search(20)!.remove()
//        XCTAssertNil(sut.left?.left)
//    }
//
//    func test_deleteRightLeaf() {
//        let sut = makeSUT()
//        sut.search(65)!.remove()
//        XCTAssertNil(sut.right?.left?.right)
//    }
//
//    func test_deleteSingleChild1() {
//        let sut = makeSUT()
//        sut.search(60)!.remove()
//        XCTAssertEqual(sut.right?.left?.value, 65)
//    }
//
//    func test_deleteSingleChild2() {
//        let sut = makeSUT()
//        sut.search(32)?.remove()
//        XCTAssertEqual(sut.left?.value, 30)
//        XCTAssertEqual(sut.left?.right?.value, 40)
//        XCTAssertEqual(sut.left?.right?.left?.value, 34)
//        XCTAssertEqual(sut.left?.right?.left?.right?.value, 36)
//    }
//
//    func test_deleteWithBothNodes() {
//        let sut = makeSUT()
//        sut.search(70)!.remove()
//        XCTAssertEqual(sut.right?.value, 75)
//        XCTAssertEqual(sut.right?.right?.value, 80)
//        XCTAssertEqual(sut.right?.right?.right?.value, 85)
//        XCTAssertNil(sut.right?.right?.left)
//    }

//    func test_deleteWithBothNodes2() {
//        let sut = makeSUT([7, 5, 20, 18, 11, 19, 14, 12, 15, 25, 33, 28, 31])
//        let node7 = sut.search(7)?.remove()
//        XCTAssertNil(node7?.parent)
//
//        XCTAssertEqual(sut.value, 11)

//        XCTAssertEqual(sut.value, 7)
//        XCTAssertEqual(sut.right?.min.value, 11)
//        XCTAssertEqual(sut.left?.value, 5)
//        XCTAssertEqual(sut.right?.value, 20)
//        XCTAssertEqual(sut.right?.left?.value, 18)
//        XCTAssertEqual(sut.right?.left?.left?.value, 11)
//        XCTAssertNil(sut.right?.left?.left?.left)
//        XCTAssertEqual(sut.right?.left?.left?.right?.value, 14)
//    }

//    ///                        50
//    ///                 30               70
//    ///              20    40         60      80
//    ///                   32        55  65   75 85
//    ///                     34     54
//    ///                       36
//    private func makeSUT(_ array: [Int] = [50, 30, 20, 40, 32, 34, 36, 70, 60, 65, 80, 75, 85, 55, 54]) -> BST<Int> {
//        let sut = BST(array: array)!
//        return sut
//    }
}
