//
//  BinarySearchTreeTest.swift
//  AlgorithmsTests
//
//  Created by Tieda Wei on 2021-02-17.
//

@testable import Algorithms
import XCTest

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

    func test_inOrderTraverse() {
        let sut = makeSUT([2, 3, 1, 4, 0, 5])
        var result = [Int]()
        sut.inOrderTraverse { result.append($0) }

        XCTAssertEqual(result, [0, 1, 2, 3, 4, 5])
    }

    func test_preOrderTraverse() {
        let sut = makeSUT([2, 3, 1, 4, 0, 5])
        var result = [Int]()
        sut.preOrderTraverse { result.append($0) }

        XCTAssertEqual(result, [2, 1, 0, 3, 4, 5])
    }

    func test_postOrderTraverse() {
        let sut = makeSUT([2, 3, 1, 4, 0, 5])
        var result = [Int]()
        sut.postOrderTraverse { result.append($0) }

        XCTAssertEqual(result, [0, 1, 5, 4, 3, 2])
    }

    func test_removeTwoChildren2() {
        /*
                 ┌──nil
               ┌──33
               │ └──28
             ┌──25
             │ └──nil
            ┌──20
            │ │ ┌──19
            │ └──18
            │   │   ┌──15
            │   │ ┌──14
            │   │ │ └──12
            │   └──11
            │     └──nil
            7
            │ ┌──nil
            └──5
             └──4
         */
        let sut = makeSUT([7, 5, 4, 20, 18, 11, 19, 14, 12, 15, 25, 33, 28])

        sut.remove(7)

        /* result:
                     ┌──nil
                   ┌──33
                   │ └──28
                 ┌──25
                 │ └──nil
               ┌──20
               │ │ ┌──19
               │ └──18
               │   │ ┌──15
               │   └──14
               │     └──12
               11
               │ ┌──nil
               └──5
                 └──4
         */

        XCTAssertEqual(11, sut.root?.value)
        XCTAssertEqual(18, sut.root?.right?.left?.value)
        XCTAssertEqual(14, sut.root?.right?.left?.left?.value)
    }

    func test_removeSingleChild() {
        /*
                 ┌──nil
               ┌──33
               │ └──28
             ┌──25
             │ └──nil
            ┌──20
            │ │ ┌──19
            │ └──18
            │   │   ┌──15
            │   │ ┌──14
            │   │ │ └──12
            │   └──11
            │     └──nil
            7
            │ ┌──nil
            └──5
             └──4
         */
        let sut = makeSUT([7, 5, 4, 20, 18, 11, 19, 14, 12, 15, 25, 33, 28])

        let remove11 = sut.remove(11)
        XCTAssertTrue(remove11)

        XCTAssertEqual(20, sut.root?.right?.value)
        XCTAssertEqual(18, sut.root?.right?.left?.value)
        XCTAssertEqual(14, sut.root?.right?.left?.left?.value)
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
